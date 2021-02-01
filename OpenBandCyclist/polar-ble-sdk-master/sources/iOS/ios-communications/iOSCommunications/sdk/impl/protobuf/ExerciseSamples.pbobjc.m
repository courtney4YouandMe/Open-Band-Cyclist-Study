// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: exercise_samples.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "ExerciseSamples.pbobjc.h"
 #import "Types.pbobjc.h"
 #import "Structures.pbobjc.h"
 #import "ExerciseRrSamples.pbobjc.h"
 #import "Nanopb.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - ExerciseSamplesRoot

@implementation ExerciseSamplesRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[TypesRoot extensionRegistry]];
    [registry addExtensions:[NanopbRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - ExerciseSamplesRoot_FileDescriptor

static GPBFileDescriptor *ExerciseSamplesRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"data"
                                                     syntax:GPBFileSyntaxProto2];
  }
  return descriptor;
}

#pragma mark - PbPowerMeasurements

@implementation PbPowerMeasurements

@dynamic hasCurrentPower, currentPower;
@dynamic hasCumulativeCrankRevolutions, cumulativeCrankRevolutions;
@dynamic hasCumulativeTimestamp, cumulativeTimestamp;
@dynamic hasForceMagnitudeMin, forceMagnitudeMin;
@dynamic hasForceMagnitudeMax, forceMagnitudeMax;
@dynamic hasForceMagnitudeMinAngle, forceMagnitudeMinAngle;
@dynamic hasForceMagnitudeMaxAngle, forceMagnitudeMaxAngle;
@dynamic hasBottomDeadSpotAngle, bottomDeadSpotAngle;
@dynamic hasTopDeadSpotAngle, topDeadSpotAngle;
@dynamic hasPedalPowerBalance, pedalPowerBalance;
@dynamic hasTorqueMagnitudeMin, torqueMagnitudeMin;
@dynamic hasTorqueMagnitudeMax, torqueMagnitudeMax;

typedef struct PbPowerMeasurements__storage_ {
  uint32_t _has_storage_[1];
  int32_t currentPower;
  uint32_t cumulativeCrankRevolutions;
  uint32_t cumulativeTimestamp;
  int32_t forceMagnitudeMin;
  int32_t forceMagnitudeMax;
  uint32_t forceMagnitudeMinAngle;
  uint32_t forceMagnitudeMaxAngle;
  uint32_t bottomDeadSpotAngle;
  uint32_t topDeadSpotAngle;
  uint32_t pedalPowerBalance;
  int32_t torqueMagnitudeMin;
  int32_t torqueMagnitudeMax;
} PbPowerMeasurements__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "currentPower",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_CurrentPower,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, currentPower),
        .flags = GPBFieldRequired,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "cumulativeCrankRevolutions",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_CumulativeCrankRevolutions,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, cumulativeCrankRevolutions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "cumulativeTimestamp",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_CumulativeTimestamp,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, cumulativeTimestamp),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "forceMagnitudeMin",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_ForceMagnitudeMin,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, forceMagnitudeMin),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeSInt32,
      },
      {
        .name = "forceMagnitudeMax",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_ForceMagnitudeMax,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, forceMagnitudeMax),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "forceMagnitudeMinAngle",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_ForceMagnitudeMinAngle,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, forceMagnitudeMinAngle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "forceMagnitudeMaxAngle",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_ForceMagnitudeMaxAngle,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, forceMagnitudeMaxAngle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "bottomDeadSpotAngle",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_BottomDeadSpotAngle,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, bottomDeadSpotAngle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "topDeadSpotAngle",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_TopDeadSpotAngle,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, topDeadSpotAngle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "pedalPowerBalance",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_PedalPowerBalance,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, pedalPowerBalance),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "torqueMagnitudeMin",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_TorqueMagnitudeMin,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, torqueMagnitudeMin),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "torqueMagnitudeMax",
        .dataTypeSpecific.className = NULL,
        .number = PbPowerMeasurements_FieldNumber_TorqueMagnitudeMax,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(PbPowerMeasurements__storage_, torqueMagnitudeMax),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PbPowerMeasurements class]
                                     rootClass:[ExerciseSamplesRoot class]
                                          file:ExerciseSamplesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PbPowerMeasurements__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PbCalibrationValue

@implementation PbCalibrationValue

@dynamic hasStartIndex, startIndex;
@dynamic hasValue, value;
@dynamic hasOperation, operation;
@dynamic hasCause, cause;

typedef struct PbCalibrationValue__storage_ {
  uint32_t _has_storage_[1];
  uint32_t startIndex;
  float value;
  PbOperationType operation;
  PbMovingType cause;
} PbCalibrationValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescriptionWithDefault fields[] = {
      {
        .defaultValue.valueUInt32 = 0U,
        .core.name = "startIndex",
        .core.dataTypeSpecific.className = NULL,
        .core.number = PbCalibrationValue_FieldNumber_StartIndex,
        .core.hasIndex = 0,
        .core.offset = (uint32_t)offsetof(PbCalibrationValue__storage_, startIndex),
        .core.flags = GPBFieldRequired,
        .core.dataType = GPBDataTypeUInt32,
      },
      {
        .defaultValue.valueFloat = 0,
        .core.name = "value",
        .core.dataTypeSpecific.className = NULL,
        .core.number = PbCalibrationValue_FieldNumber_Value,
        .core.hasIndex = 1,
        .core.offset = (uint32_t)offsetof(PbCalibrationValue__storage_, value),
        .core.flags = GPBFieldRequired,
        .core.dataType = GPBDataTypeFloat,
      },
      {
        .defaultValue.valueEnum = PbOperationType_Multiply,
        .core.name = "operation",
        .core.dataTypeSpecific.enumDescFunc = PbOperationType_EnumDescriptor,
        .core.number = PbCalibrationValue_FieldNumber_Operation,
        .core.hasIndex = 2,
        .core.offset = (uint32_t)offsetof(PbCalibrationValue__storage_, operation),
        .core.flags = (GPBFieldFlags)(GPBFieldRequired | GPBFieldHasEnumDescriptor),
        .core.dataType = GPBDataTypeEnum,
      },
      {
        .defaultValue.valueEnum = PbMovingType_Walking,
        .core.name = "cause",
        .core.dataTypeSpecific.enumDescFunc = PbMovingType_EnumDescriptor,
        .core.number = PbCalibrationValue_FieldNumber_Cause,
        .core.hasIndex = 3,
        .core.offset = (uint32_t)offsetof(PbCalibrationValue__storage_, cause),
        .core.flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .core.dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PbCalibrationValue class]
                                     rootClass:[ExerciseSamplesRoot class]
                                          file:ExerciseSamplesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescriptionWithDefault))
                                   storageSize:sizeof(PbCalibrationValue__storage_)
                                         flags:GPBDescriptorInitializationFlag_FieldsWithDefault];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PbExerciseIntervalledSampleList

@implementation PbExerciseIntervalledSampleList

@dynamic hasSampleType, sampleType;
@dynamic hasRecordingIntervalMs, recordingIntervalMs;
@dynamic sampleSourceArray, sampleSourceArray_Count;
@dynamic heartRateSamplesArray, heartRateSamplesArray_Count;
@dynamic cadenceSamplesArray, cadenceSamplesArray_Count;
@dynamic speedSamplesArray, speedSamplesArray_Count;
@dynamic distanceSamplesArray, distanceSamplesArray_Count;
@dynamic forwardAccelerationArray, forwardAccelerationArray_Count;
@dynamic movingTypeSamplesArray, movingTypeSamplesArray_Count;
@dynamic altitudeSamplesArray, altitudeSamplesArray_Count;
@dynamic altitudeCalibrationArray, altitudeCalibrationArray_Count;
@dynamic temperatureSamplesArray, temperatureSamplesArray_Count;
@dynamic strideLengthSamplesArray, strideLengthSamplesArray_Count;
@dynamic strideCalibrationArray, strideCalibrationArray_Count;
@dynamic leftPedalPowerSamplesArray, leftPedalPowerSamplesArray_Count;
@dynamic rightPedalPowerSamplesArray, rightPedalPowerSamplesArray_Count;
@dynamic leftPowerCalibrationArray, leftPowerCalibrationArray_Count;
@dynamic rightPowerCalibrationArray, rightPowerCalibrationArray_Count;
@dynamic hasRrSamples, rrSamples;
@dynamic accelerationMadSamplesArray, accelerationMadSamplesArray_Count;

typedef struct PbExerciseIntervalledSampleList__storage_ {
  uint32_t _has_storage_[1];
  PbSampleType sampleType;
  uint32_t recordingIntervalMs;
  NSMutableArray *sampleSourceArray;
  GPBUInt32Array *heartRateSamplesArray;
  GPBUInt32Array *cadenceSamplesArray;
  GPBFloatArray *speedSamplesArray;
  GPBFloatArray *distanceSamplesArray;
  GPBFloatArray *forwardAccelerationArray;
  GPBEnumArray *movingTypeSamplesArray;
  GPBFloatArray *altitudeSamplesArray;
  NSMutableArray *altitudeCalibrationArray;
  GPBFloatArray *temperatureSamplesArray;
  GPBUInt32Array *strideLengthSamplesArray;
  NSMutableArray *strideCalibrationArray;
  NSMutableArray *leftPedalPowerSamplesArray;
  NSMutableArray *rightPedalPowerSamplesArray;
  NSMutableArray *leftPowerCalibrationArray;
  NSMutableArray *rightPowerCalibrationArray;
  PbExerciseRRIntervals *rrSamples;
  GPBFloatArray *accelerationMadSamplesArray;
} PbExerciseIntervalledSampleList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sampleType",
        .dataTypeSpecific.enumDescFunc = PbSampleType_EnumDescriptor,
        .number = PbExerciseIntervalledSampleList_FieldNumber_SampleType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, sampleType),
        .flags = (GPBFieldFlags)(GPBFieldRequired | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "recordingIntervalMs",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_RecordingIntervalMs,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, recordingIntervalMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "sampleSourceArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSampleSource),
        .number = PbExerciseIntervalledSampleList_FieldNumber_SampleSourceArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, sampleSourceArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "heartRateSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_HeartRateSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, heartRateSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "cadenceSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_CadenceSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, cadenceSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "speedSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_SpeedSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, speedSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "distanceSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_DistanceSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, distanceSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "forwardAccelerationArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_ForwardAccelerationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, forwardAccelerationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "movingTypeSamplesArray",
        .dataTypeSpecific.enumDescFunc = PbMovingType_EnumDescriptor,
        .number = PbExerciseIntervalledSampleList_FieldNumber_MovingTypeSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, movingTypeSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "altitudeSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_AltitudeSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, altitudeSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "altitudeCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseIntervalledSampleList_FieldNumber_AltitudeCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, altitudeCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "temperatureSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_TemperatureSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, temperatureSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "strideLengthSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_StrideLengthSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, strideLengthSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "strideCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseIntervalledSampleList_FieldNumber_StrideCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, strideCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "leftPedalPowerSamplesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbPowerMeasurements),
        .number = PbExerciseIntervalledSampleList_FieldNumber_LeftPedalPowerSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, leftPedalPowerSamplesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rightPedalPowerSamplesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbPowerMeasurements),
        .number = PbExerciseIntervalledSampleList_FieldNumber_RightPedalPowerSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, rightPedalPowerSamplesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "leftPowerCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseIntervalledSampleList_FieldNumber_LeftPowerCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, leftPowerCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rightPowerCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseIntervalledSampleList_FieldNumber_RightPowerCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, rightPowerCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rrSamples",
        .dataTypeSpecific.className = GPBStringifySymbol(PbExerciseRRIntervals),
        .number = PbExerciseIntervalledSampleList_FieldNumber_RrSamples,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, rrSamples),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "accelerationMadSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseIntervalledSampleList_FieldNumber_AccelerationMadSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseIntervalledSampleList__storage_, accelerationMadSamplesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeFloat,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PbExerciseIntervalledSampleList class]
                                     rootClass:[ExerciseSamplesRoot class]
                                          file:ExerciseSamplesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PbExerciseIntervalledSampleList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PbExerciseSamples

@implementation PbExerciseSamples

@dynamic hasRecordingInterval, recordingInterval;
@dynamic heartRateSamplesArray, heartRateSamplesArray_Count;
@dynamic heartRateOfflineArray, heartRateOfflineArray_Count;
@dynamic cadenceSamplesArray, cadenceSamplesArray_Count;
@dynamic cadenceOfflineArray, cadenceOfflineArray_Count;
@dynamic altitudeSamplesArray, altitudeSamplesArray_Count;
@dynamic altitudeOfflineArray, altitudeOfflineArray_Count;
@dynamic altitudeCalibrationArray, altitudeCalibrationArray_Count;
@dynamic temperatureSamplesArray, temperatureSamplesArray_Count;
@dynamic temperatureOfflineArray, temperatureOfflineArray_Count;
@dynamic speedSamplesArray, speedSamplesArray_Count;
@dynamic speedOfflineArray, speedOfflineArray_Count;
@dynamic distanceSamplesArray, distanceSamplesArray_Count;
@dynamic distanceOfflineArray, distanceOfflineArray_Count;
@dynamic strideLengthSamplesArray, strideLengthSamplesArray_Count;
@dynamic strideLengthOfflineArray, strideLengthOfflineArray_Count;
@dynamic strideCalibrationArray, strideCalibrationArray_Count;
@dynamic forwardAccelerationArray, forwardAccelerationArray_Count;
@dynamic forwardAccelerationOfflineArray, forwardAccelerationOfflineArray_Count;
@dynamic movingTypeSamplesArray, movingTypeSamplesArray_Count;
@dynamic movingTypeOfflineArray, movingTypeOfflineArray_Count;
@dynamic leftPedalPowerSamplesArray, leftPedalPowerSamplesArray_Count;
@dynamic leftPedalPowerOfflineArray, leftPedalPowerOfflineArray_Count;
@dynamic rightPedalPowerSamplesArray, rightPedalPowerSamplesArray_Count;
@dynamic rightPedalPowerOfflineArray, rightPedalPowerOfflineArray_Count;
@dynamic leftPowerCalibrationArray, leftPowerCalibrationArray_Count;
@dynamic rightPowerCalibrationArray, rightPowerCalibrationArray_Count;
@dynamic hasRrSamples, rrSamples;
@dynamic exerciseIntervalledSampleListArray, exerciseIntervalledSampleListArray_Count;
@dynamic pauseTimesArray, pauseTimesArray_Count;

typedef struct PbExerciseSamples__storage_ {
  uint32_t _has_storage_[1];
  PbDuration *recordingInterval;
  GPBUInt32Array *heartRateSamplesArray;
  NSMutableArray *heartRateOfflineArray;
  GPBUInt32Array *cadenceSamplesArray;
  NSMutableArray *cadenceOfflineArray;
  GPBFloatArray *altitudeSamplesArray;
  NSMutableArray *altitudeCalibrationArray;
  GPBFloatArray *temperatureSamplesArray;
  GPBFloatArray *speedSamplesArray;
  NSMutableArray *speedOfflineArray;
  GPBFloatArray *distanceSamplesArray;
  NSMutableArray *distanceOfflineArray;
  GPBUInt32Array *strideLengthSamplesArray;
  NSMutableArray *strideLengthOfflineArray;
  NSMutableArray *strideCalibrationArray;
  GPBFloatArray *forwardAccelerationArray;
  GPBEnumArray *movingTypeSamplesArray;
  NSMutableArray *altitudeOfflineArray;
  NSMutableArray *temperatureOfflineArray;
  NSMutableArray *forwardAccelerationOfflineArray;
  NSMutableArray *movingTypeOfflineArray;
  NSMutableArray *leftPedalPowerSamplesArray;
  NSMutableArray *leftPedalPowerOfflineArray;
  NSMutableArray *rightPedalPowerSamplesArray;
  NSMutableArray *rightPedalPowerOfflineArray;
  NSMutableArray *leftPowerCalibrationArray;
  NSMutableArray *rightPowerCalibrationArray;
  PbExerciseRRIntervals *rrSamples;
  NSMutableArray *exerciseIntervalledSampleListArray;
  NSMutableArray *pauseTimesArray;
} PbExerciseSamples__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "recordingInterval",
        .dataTypeSpecific.className = GPBStringifySymbol(PbDuration),
        .number = PbExerciseSamples_FieldNumber_RecordingInterval,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, recordingInterval),
        .flags = GPBFieldRequired,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "heartRateSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_HeartRateSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, heartRateSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "heartRateOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_HeartRateOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, heartRateOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "cadenceSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_CadenceSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, cadenceSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "cadenceOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_CadenceOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, cadenceOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "altitudeSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_AltitudeSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, altitudeSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "altitudeCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseSamples_FieldNumber_AltitudeCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, altitudeCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "temperatureSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_TemperatureSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, temperatureSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "speedSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_SpeedSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, speedSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "speedOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_SpeedOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, speedOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "distanceSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_DistanceSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, distanceSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "distanceOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_DistanceOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, distanceOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "strideLengthSamplesArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_StrideLengthSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, strideLengthSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "strideLengthOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_StrideLengthOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, strideLengthOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "strideCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseSamples_FieldNumber_StrideCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, strideCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "forwardAccelerationArray",
        .dataTypeSpecific.className = NULL,
        .number = PbExerciseSamples_FieldNumber_ForwardAccelerationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, forwardAccelerationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "movingTypeSamplesArray",
        .dataTypeSpecific.enumDescFunc = PbMovingType_EnumDescriptor,
        .number = PbExerciseSamples_FieldNumber_MovingTypeSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, movingTypeSamplesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "altitudeOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_AltitudeOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, altitudeOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "temperatureOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_TemperatureOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, temperatureOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "forwardAccelerationOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_ForwardAccelerationOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, forwardAccelerationOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "movingTypeOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_MovingTypeOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, movingTypeOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "leftPedalPowerSamplesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbPowerMeasurements),
        .number = PbExerciseSamples_FieldNumber_LeftPedalPowerSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, leftPedalPowerSamplesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "leftPedalPowerOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_LeftPedalPowerOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, leftPedalPowerOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rightPedalPowerSamplesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbPowerMeasurements),
        .number = PbExerciseSamples_FieldNumber_RightPedalPowerSamplesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, rightPedalPowerSamplesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rightPedalPowerOfflineArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbSensorOffline),
        .number = PbExerciseSamples_FieldNumber_RightPedalPowerOfflineArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, rightPedalPowerOfflineArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "leftPowerCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseSamples_FieldNumber_LeftPowerCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, leftPowerCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rightPowerCalibrationArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbCalibrationValue),
        .number = PbExerciseSamples_FieldNumber_RightPowerCalibrationArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, rightPowerCalibrationArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rrSamples",
        .dataTypeSpecific.className = GPBStringifySymbol(PbExerciseRRIntervals),
        .number = PbExerciseSamples_FieldNumber_RrSamples,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, rrSamples),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "exerciseIntervalledSampleListArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbExerciseIntervalledSampleList),
        .number = PbExerciseSamples_FieldNumber_ExerciseIntervalledSampleListArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, exerciseIntervalledSampleListArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "pauseTimesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(PbPauseTime),
        .number = PbExerciseSamples_FieldNumber_PauseTimesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PbExerciseSamples__storage_, pauseTimesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PbExerciseSamples class]
                                     rootClass:[ExerciseSamplesRoot class]
                                          file:ExerciseSamplesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PbExerciseSamples__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
