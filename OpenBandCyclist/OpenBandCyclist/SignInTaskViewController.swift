//
//  SignInTaskViewController.swift
//  OpenBandCyclist
//
//  Copyright © 2021 Sage Bionetworks. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// 1.  Redistributions of source code must retain the above copyright notice, this
// list of conditions and the following disclaimer.
//
// 2.  Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation and/or
// other materials provided with the distribution.
//
// 3.  Neither the name of the copyright holder(s) nor the names of any contributors
// may be used to endorse or promote products derived from this software without
// specific prior written permission. No license is granted to the trademarks of
// the copyright holders even if such marks are included in this software.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

import Research
import ResearchUI
import BridgeSDK
import BridgeApp
import CoreTelephony

protocol SignInDelegate : class {
    func signIn(token: String)
}

public class SignInTaskViewController: RSDTaskViewController, SignInDelegate {
    
    public static let taskIdentifier = "PhoneSignIn"
    
    var phoneNumber: String? {
        guard let phoneNumber = self.resultForPhoneNumber()?.value as? String
            else {
                return nil
        }
        
        return phoneNumber
    }
    
    public static let US_REGION_CODE = "US"
    public static let US_COUNTRY_CODE = "+1"
    
    public static let UK_REGION_CODE = "GB" // (UK excluding Isle of Man)
    public static let UK_COUNTRY_CODE = "+44"
    
    public static let FRENCH_REGION_CODE = "FR"
    public static let FRENCH_COUNTRY_CODE = "+33"
    
    /// The ISO country code for the region the user's phone number is in, defaults to US
    var regionCode: String? = US_REGION_CODE
    
    var countryCode: String? {
        switch regionCode {
        case SignInTaskViewController.UK_REGION_CODE:
            return SignInTaskViewController.UK_COUNTRY_CODE
        case SignInTaskViewController.FRENCH_REGION_CODE:
            return SignInTaskViewController.FRENCH_COUNTRY_CODE
        default:
            return SignInTaskViewController.US_COUNTRY_CODE
        }
    }

    init() {
        if #available(iOS 12.0, *) {
            if let providers = CTTelephonyNetworkInfo().serviceSubscriberCellularProviders,
               let carrier = providers.values.first, let countryCode = carrier.isoCountryCode {
                self.regionCode = countryCode.uppercased()
            }
        } else {
            if let carrier = CTTelephonyNetworkInfo().subscriberCellularProvider, let countryCode = carrier.isoCountryCode {
                self.regionCode = countryCode.uppercased()
            }
        }
        do {
            let resourceTransformer = RSDResourceTransformerObject(resourceName: SignInTaskViewController.taskIdentifier)
            let task = try RSDFactory.shared.decodeTask(with: resourceTransformer)
            let taskViewModel = RSDTaskViewModel(task: task)
            super.init(taskViewModel: taskViewModel)
        } catch let err {
            fatalError("Failed to decode the SignIn task. \(err)")
        }
    }
    
    func resultForPhoneNumber() -> RSDAnswerResultObject? {
        guard let taskResult = self.taskViewModel?.taskResult else { return nil }
        let phoneResultIdentifier = "enterPhoneNumber"
        return taskResult.findAnswerResult(with: phoneResultIdentifier) as? RSDAnswerResultObject
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        (UIApplication.shared.delegate as? AppDelegate)?.smsSignInDelegate = self
    }

    func signUpAndRequestSMSLink(completion: @escaping SBBNetworkManagerCompletionBlock) {
        
        guard let phoneNumber = self.phoneNumber,
            let regionCode = self.regionCode,
            !phoneNumber.isEmpty,
            !regionCode.isEmpty else {
                debugPrint("Unable to sign up and request SMS link: phone number or region code is missing or empty")
                return
        }
        
        if phoneNumber == "+10000000000" {
            self.handleAppleTestUser()
            return
        }
        
        let signUp: SBBSignUp = SBBSignUp()
        signUp.checkForConsent = true
        signUp.phone = SBBPhone()
        signUp.phone!.number = phoneNumber
        signUp.phone!.regionCode = regionCode
        
        signUp.sharingScope = "all_qualified_researchers"
        
        BridgeSDK.authManager.signUpStudyParticipant(signUp, completion: { (task, result, error) in
            guard error == nil else {
                DispatchQueue.main.async {
                    completion(task, result, error)
                }
                return
            }
            
            // we're signed up so request a sign-in link via SMS
            BridgeSDK.authManager.textSignInToken(to: phoneNumber, regionCode: regionCode, completion: { (task, result, error) in
                DispatchQueue.main.async {
                    completion(task, result, error)
                }
            })
        })
    }
    
    func afterSignIn(succeeded: Bool, needsToConsent: Bool) {
        guard self.taskViewModel.currentStep?.identifier == "waiting"
            else {
            (AppDelegate.shared as! AppDelegate).showAppropriateViewController(animated: true)
            return
        }
        
        if succeeded {
            self.taskViewModel.goForward()
        } else {
            self.taskViewModel.goBack()
        }
    }

    func signIn(token: String) {
        // Should never happen in production since we don't allow them to get this far without entering a phone number, and the regionCode is hardcoded
        guard let phoneNumber = self.phoneNumber,
            !phoneNumber.isEmpty,
            let regionCode = self.regionCode,
            !regionCode.isEmpty else {
                #if DEBUG
                print("Unable to sign in: phone number: \(String(describing: self.phoneNumber)) and/or region code: \(String(describing: self.regionCode)) is missing or empty.")
                #endif
                self.afterSignIn(succeeded: false, needsToConsent: false)
                return
        }
        
        BridgeSDK.authManager.signIn(withPhoneNumber:phoneNumber, regionCode:regionCode, token:token, completion: { (task, result, error) in
            DispatchQueue.main.async {
                var needsToConsent = false
                if (error != nil) {
                    needsToConsent = (error! as NSError).code == SBBErrorCode.serverPreconditionNotMet.rawValue
                }
                if error == nil || needsToConsent {
                    self.afterSignIn(succeeded: true, needsToConsent: needsToConsent)
                } else {
                    #if DEBUG
                    print("Error attempting to sign in with SMS link token \(String(describing: token)) for phone number \(String(describing: phoneNumber)) and region code \(String(describing: regionCode)):\n\(String(describing: error))\n\nResult:\n\(String(describing: result))")
                    #endif
                    let title = Localization.localizedString("SIGN_IN_ERROR_TITLE")
                    var message = Localization.localizedString("SIGN_IN_ERROR_BODY_GENERIC_ERROR")
                    if (error! as NSError).code == SBBErrorCode.serverNotAuthenticated.rawValue {
                        message = Localization.localizedString("SIGN_IN_ERROR_BODY_USED_TOKEN")
                    }
                    self.presentAlertWithOk(title: title, message: message, actionHandler: { (_) in
                        // Allow the user to try again
                        self.taskViewModel.goBack()
                    })
                }
            }
        })
    }
    
    private func handleAppleTestUser() {
        self.presentAlertWithYesNo(title: "Are you a tester?", message: "") { yesTapped in
            if yesTapped {
                self.showLoadingView()
                BridgeSDK.authManager.signIn(withExternalId: "AppleTest1", password: "Abc12345!") { task, response, error in
                    DispatchQueue.main.async {
                        self.hideLoadingIfNeeded()
                        var needsToConsent = false
                        if (error != nil) {
                            needsToConsent = (error! as NSError).code == SBBErrorCode.serverPreconditionNotMet.rawValue
                        }
                        if error == nil || needsToConsent {
                            self.afterSignIn(succeeded: true, needsToConsent: needsToConsent)
                        } else {
                            self.presentAlertWithOk(title: "Error", message: error?.localizedDescription ?? "", actionHandler: nil)
                            return
                        }
                    }
                }
            } else {
                self.hideLoadingIfNeeded()
            }
        }
    }
}
