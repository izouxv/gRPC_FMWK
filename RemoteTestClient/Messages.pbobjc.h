// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: messages.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 1
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30001
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class RMTPayload;
@class RMTResponseParameters;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum RMTPayloadType

/** The type of payload that should be returned. */
typedef GPB_ENUM(RMTPayloadType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  RMTPayloadType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Compressable text format. */
  RMTPayloadType_Compressable = 0,

  /** Uncompressable binary format. */
  RMTPayloadType_Uncompressable = 1,

  /** Randomly chosen from all other formats defined in this enum. */
  RMTPayloadType_Random = 2,
};

GPBEnumDescriptor *RMTPayloadType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL RMTPayloadType_IsValidValue(int32_t value);

#pragma mark - RMTMessagesRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface RMTMessagesRoot : GPBRootObject
@end

#pragma mark - RMTPayload

typedef GPB_ENUM(RMTPayload_FieldNumber) {
  RMTPayload_FieldNumber_Type = 1,
  RMTPayload_FieldNumber_Body = 2,
};

/**
 * A block of data, to simply increase gRPC message size.
 **/
@interface RMTPayload : GPBMessage

/** The type of data in body. */
@property(nonatomic, readwrite) RMTPayloadType type;

/** Primary contents of payload. */
@property(nonatomic, readwrite, copy, null_resettable) NSData *body;

@end

/**
 * Fetches the raw value of a @c RMTPayload's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t RMTPayload_Type_RawValue(RMTPayload *message);
/**
 * Sets the raw value of an @c RMTPayload's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetRMTPayload_Type_RawValue(RMTPayload *message, int32_t value);

#pragma mark - RMTSimpleRequest

typedef GPB_ENUM(RMTSimpleRequest_FieldNumber) {
  RMTSimpleRequest_FieldNumber_ResponseType = 1,
  RMTSimpleRequest_FieldNumber_ResponseSize = 2,
  RMTSimpleRequest_FieldNumber_Payload = 3,
  RMTSimpleRequest_FieldNumber_FillUsername = 4,
  RMTSimpleRequest_FieldNumber_FillOauthScope = 5,
};

/**
 * Unary request.
 **/
@interface RMTSimpleRequest : GPBMessage

/**
 * Desired payload type in the response from the server.
 * If response_type is RANDOM, server randomly chooses one from other formats.
 **/
@property(nonatomic, readwrite) RMTPayloadType responseType;

/**
 * Desired payload size in the response from the server.
 * If response_type is COMPRESSABLE, this denotes the size before compression.
 **/
@property(nonatomic, readwrite) int32_t responseSize;

/** Optional input payload sent along with the request. */
@property(nonatomic, readwrite, strong, null_resettable) RMTPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

/** Whether SimpleResponse should include username. */
@property(nonatomic, readwrite) BOOL fillUsername;

/** Whether SimpleResponse should include OAuth scope. */
@property(nonatomic, readwrite) BOOL fillOauthScope;

@end

/**
 * Fetches the raw value of a @c RMTSimpleRequest's @c responseType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t RMTSimpleRequest_ResponseType_RawValue(RMTSimpleRequest *message);
/**
 * Sets the raw value of an @c RMTSimpleRequest's @c responseType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetRMTSimpleRequest_ResponseType_RawValue(RMTSimpleRequest *message, int32_t value);

#pragma mark - RMTSimpleResponse

typedef GPB_ENUM(RMTSimpleResponse_FieldNumber) {
  RMTSimpleResponse_FieldNumber_Payload = 1,
  RMTSimpleResponse_FieldNumber_Username = 2,
  RMTSimpleResponse_FieldNumber_OauthScope = 3,
};

/**
 * Unary response, as configured by the request.
 **/
@interface RMTSimpleResponse : GPBMessage

/** Payload to increase message size. */
@property(nonatomic, readwrite, strong, null_resettable) RMTPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

/**
 * The user the request came from, for verifying authentication was
 * successful when the client expected it.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

/** OAuth scope. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *oauthScope;

@end

#pragma mark - RMTStreamingInputCallRequest

typedef GPB_ENUM(RMTStreamingInputCallRequest_FieldNumber) {
  RMTStreamingInputCallRequest_FieldNumber_Payload = 1,
};

/**
 * Client-streaming request.
 **/
@interface RMTStreamingInputCallRequest : GPBMessage

/** Optional input payload sent along with the request. */
@property(nonatomic, readwrite, strong, null_resettable) RMTPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@end

#pragma mark - RMTStreamingInputCallResponse

typedef GPB_ENUM(RMTStreamingInputCallResponse_FieldNumber) {
  RMTStreamingInputCallResponse_FieldNumber_AggregatedPayloadSize = 1,
};

/**
 * Client-streaming response.
 **/
@interface RMTStreamingInputCallResponse : GPBMessage

/** Aggregated size of payloads received from the client. */
@property(nonatomic, readwrite) int32_t aggregatedPayloadSize;

@end

#pragma mark - RMTResponseParameters

typedef GPB_ENUM(RMTResponseParameters_FieldNumber) {
  RMTResponseParameters_FieldNumber_Size = 1,
  RMTResponseParameters_FieldNumber_IntervalUs = 2,
};

/**
 * Configuration for a particular response.
 **/
@interface RMTResponseParameters : GPBMessage

/**
 * Desired payload sizes in responses from the server.
 * If response_type is COMPRESSABLE, this denotes the size before compression.
 **/
@property(nonatomic, readwrite) int32_t size;

/**
 * Desired interval between consecutive responses in the response stream in
 * microseconds.
 **/
@property(nonatomic, readwrite) int32_t intervalUs;

@end

#pragma mark - RMTStreamingOutputCallRequest

typedef GPB_ENUM(RMTStreamingOutputCallRequest_FieldNumber) {
  RMTStreamingOutputCallRequest_FieldNumber_ResponseType = 1,
  RMTStreamingOutputCallRequest_FieldNumber_ResponseParametersArray = 2,
  RMTStreamingOutputCallRequest_FieldNumber_Payload = 3,
};

/**
 * Server-streaming request.
 **/
@interface RMTStreamingOutputCallRequest : GPBMessage

/**
 * Desired payload type in the response from the server.
 * If response_type is RANDOM, the payload from each response in the stream
 * might be of different types. This is to simulate a mixed type of payload
 * stream.
 **/
@property(nonatomic, readwrite) RMTPayloadType responseType;

/** Configuration for each expected response message. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<RMTResponseParameters*> *responseParametersArray;
/** The number of items in @c responseParametersArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger responseParametersArray_Count;

/** Optional input payload sent along with the request. */
@property(nonatomic, readwrite, strong, null_resettable) RMTPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@end

/**
 * Fetches the raw value of a @c RMTStreamingOutputCallRequest's @c responseType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t RMTStreamingOutputCallRequest_ResponseType_RawValue(RMTStreamingOutputCallRequest *message);
/**
 * Sets the raw value of an @c RMTStreamingOutputCallRequest's @c responseType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetRMTStreamingOutputCallRequest_ResponseType_RawValue(RMTStreamingOutputCallRequest *message, int32_t value);

#pragma mark - RMTStreamingOutputCallResponse

typedef GPB_ENUM(RMTStreamingOutputCallResponse_FieldNumber) {
  RMTStreamingOutputCallResponse_FieldNumber_Payload = 1,
};

/**
 * Server-streaming response, as configured by the request and parameters.
 **/
@interface RMTStreamingOutputCallResponse : GPBMessage

/** Payload to increase response size. */
@property(nonatomic, readwrite, strong, null_resettable) RMTPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
