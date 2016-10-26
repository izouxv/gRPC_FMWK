// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: messages.proto

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

 #import "Messages.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - RMTMessagesRoot

@implementation RMTMessagesRoot

@end

#pragma mark - RMTMessagesRoot_FileDescriptor

static GPBFileDescriptor *RMTMessagesRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"grpc.testing"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum RMTPayloadType

GPBEnumDescriptor *RMTPayloadType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Compressable\000Uncompressable\000Random\000";
    static const int32_t values[] = {
        RMTPayloadType_Compressable,
        RMTPayloadType_Uncompressable,
        RMTPayloadType_Random,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(RMTPayloadType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:RMTPayloadType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL RMTPayloadType_IsValidValue(int32_t value__) {
  switch (value__) {
    case RMTPayloadType_Compressable:
    case RMTPayloadType_Uncompressable:
    case RMTPayloadType_Random:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - RMTPayload

@implementation RMTPayload

@dynamic type;
@dynamic body;

typedef struct RMTPayload__storage_ {
  uint32_t _has_storage_[1];
  RMTPayloadType type;
  __unsafe_unretained NSData *body;
} RMTPayload__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = RMTPayloadType_EnumDescriptor,
        .number = RMTPayload_FieldNumber_Type,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTPayload__storage_, type),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "body",
        .dataTypeSpecific.className = NULL,
        .number = RMTPayload_FieldNumber_Body,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RMTPayload__storage_, body),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTPayload class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTPayload__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t RMTPayload_Type_RawValue(RMTPayload *message) {
  GPBDescriptor *descriptor = [RMTPayload descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RMTPayload_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetRMTPayload_Type_RawValue(RMTPayload *message, int32_t value) {
  GPBDescriptor *descriptor = [RMTPayload descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RMTPayload_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - RMTSimpleRequest

@implementation RMTSimpleRequest

@dynamic responseType;
@dynamic responseSize;
@dynamic hasPayload, payload;
@dynamic fillUsername;
@dynamic fillOauthScope;

typedef struct RMTSimpleRequest__storage_ {
  uint32_t _has_storage_[1];
  RMTPayloadType responseType;
  int32_t responseSize;
  __unsafe_unretained RMTPayload *payload;
} RMTSimpleRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "responseType",
        .dataTypeSpecific.enumDescFunc = RMTPayloadType_EnumDescriptor,
        .number = RMTSimpleRequest_FieldNumber_ResponseType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTSimpleRequest__storage_, responseType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "responseSize",
        .dataTypeSpecific.className = NULL,
        .number = RMTSimpleRequest_FieldNumber_ResponseSize,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RMTSimpleRequest__storage_, responseSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(RMTPayload),
        .number = RMTSimpleRequest_FieldNumber_Payload,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(RMTSimpleRequest__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "fillUsername",
        .dataTypeSpecific.className = NULL,
        .number = RMTSimpleRequest_FieldNumber_FillUsername,
        .hasIndex = 3,
        .offset = 4,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "fillOauthScope",
        .dataTypeSpecific.className = NULL,
        .number = RMTSimpleRequest_FieldNumber_FillOauthScope,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTSimpleRequest class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTSimpleRequest__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t RMTSimpleRequest_ResponseType_RawValue(RMTSimpleRequest *message) {
  GPBDescriptor *descriptor = [RMTSimpleRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RMTSimpleRequest_FieldNumber_ResponseType];
  return GPBGetMessageInt32Field(message, field);
}

void SetRMTSimpleRequest_ResponseType_RawValue(RMTSimpleRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [RMTSimpleRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RMTSimpleRequest_FieldNumber_ResponseType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - RMTSimpleResponse

@implementation RMTSimpleResponse

@dynamic hasPayload, payload;
@dynamic username;
@dynamic oauthScope;

typedef struct RMTSimpleResponse__storage_ {
  uint32_t _has_storage_[1];
  __unsafe_unretained RMTPayload *payload;
  __unsafe_unretained NSString *username;
  __unsafe_unretained NSString *oauthScope;
} RMTSimpleResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(RMTPayload),
        .number = RMTSimpleResponse_FieldNumber_Payload,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTSimpleResponse__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "username",
        .dataTypeSpecific.className = NULL,
        .number = RMTSimpleResponse_FieldNumber_Username,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RMTSimpleResponse__storage_, username),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "oauthScope",
        .dataTypeSpecific.className = NULL,
        .number = RMTSimpleResponse_FieldNumber_OauthScope,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(RMTSimpleResponse__storage_, oauthScope),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTSimpleResponse class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTSimpleResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RMTStreamingInputCallRequest

@implementation RMTStreamingInputCallRequest

@dynamic hasPayload, payload;

typedef struct RMTStreamingInputCallRequest__storage_ {
  uint32_t _has_storage_[1];
  __unsafe_unretained RMTPayload *payload;
} RMTStreamingInputCallRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(RMTPayload),
        .number = RMTStreamingInputCallRequest_FieldNumber_Payload,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTStreamingInputCallRequest__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTStreamingInputCallRequest class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTStreamingInputCallRequest__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RMTStreamingInputCallResponse

@implementation RMTStreamingInputCallResponse

@dynamic aggregatedPayloadSize;

typedef struct RMTStreamingInputCallResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t aggregatedPayloadSize;
} RMTStreamingInputCallResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "aggregatedPayloadSize",
        .dataTypeSpecific.className = NULL,
        .number = RMTStreamingInputCallResponse_FieldNumber_AggregatedPayloadSize,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTStreamingInputCallResponse__storage_, aggregatedPayloadSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTStreamingInputCallResponse class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTStreamingInputCallResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RMTResponseParameters

@implementation RMTResponseParameters

@dynamic size;
@dynamic intervalUs;

typedef struct RMTResponseParameters__storage_ {
  uint32_t _has_storage_[1];
  int32_t size;
  int32_t intervalUs;
} RMTResponseParameters__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = RMTResponseParameters_FieldNumber_Size,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTResponseParameters__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "intervalUs",
        .dataTypeSpecific.className = NULL,
        .number = RMTResponseParameters_FieldNumber_IntervalUs,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RMTResponseParameters__storage_, intervalUs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTResponseParameters class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTResponseParameters__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RMTStreamingOutputCallRequest

@implementation RMTStreamingOutputCallRequest

@dynamic responseType;
@dynamic responseParametersArray, responseParametersArray_Count;
@dynamic hasPayload, payload;

typedef struct RMTStreamingOutputCallRequest__storage_ {
  uint32_t _has_storage_[1];
  RMTPayloadType responseType;
  __unsafe_unretained NSMutableArray *responseParametersArray;
  __unsafe_unretained RMTPayload *payload;
} RMTStreamingOutputCallRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "responseType",
        .dataTypeSpecific.enumDescFunc = RMTPayloadType_EnumDescriptor,
        .number = RMTStreamingOutputCallRequest_FieldNumber_ResponseType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTStreamingOutputCallRequest__storage_, responseType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "responseParametersArray",
        .dataTypeSpecific.className = GPBStringifySymbol(RMTResponseParameters),
        .number = RMTStreamingOutputCallRequest_FieldNumber_ResponseParametersArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(RMTStreamingOutputCallRequest__storage_, responseParametersArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(RMTPayload),
        .number = RMTStreamingOutputCallRequest_FieldNumber_Payload,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RMTStreamingOutputCallRequest__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTStreamingOutputCallRequest class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTStreamingOutputCallRequest__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t RMTStreamingOutputCallRequest_ResponseType_RawValue(RMTStreamingOutputCallRequest *message) {
  GPBDescriptor *descriptor = [RMTStreamingOutputCallRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RMTStreamingOutputCallRequest_FieldNumber_ResponseType];
  return GPBGetMessageInt32Field(message, field);
}

void SetRMTStreamingOutputCallRequest_ResponseType_RawValue(RMTStreamingOutputCallRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [RMTStreamingOutputCallRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RMTStreamingOutputCallRequest_FieldNumber_ResponseType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - RMTStreamingOutputCallResponse

@implementation RMTStreamingOutputCallResponse

@dynamic hasPayload, payload;

typedef struct RMTStreamingOutputCallResponse__storage_ {
  uint32_t _has_storage_[1];
  __unsafe_unretained RMTPayload *payload;
} RMTStreamingOutputCallResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(RMTPayload),
        .number = RMTStreamingOutputCallResponse_FieldNumber_Payload,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RMTStreamingOutputCallResponse__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RMTStreamingOutputCallResponse class]
                                     rootClass:[RMTMessagesRoot class]
                                          file:RMTMessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RMTStreamingOutputCallResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
