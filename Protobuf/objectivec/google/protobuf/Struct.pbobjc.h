// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/protobuf/struct.proto

#import <Protobuf/GPBProtocolBuffers.h>

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

@class GPBListValue;
@class GPBStruct;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum GPBNullValue

// `NullValue` is a singleton enumeration to represent the null value for the
// `Value` type union.
//
//  The JSON representation for `NullValue` is JSON `null`.
typedef GPB_ENUM(GPBNullValue) {
  GPBNullValue_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  // Null value.
  GPBNullValue_NullValue = 0,
};

GPBEnumDescriptor *GPBNullValue_EnumDescriptor(void);

BOOL GPBNullValue_IsValidValue(int32_t value);

#pragma mark - GPBStructRoot

@interface GPBStructRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - GPBStruct

typedef GPB_ENUM(GPBStruct_FieldNumber) {
  GPBStruct_FieldNumber_Fields = 1,
};

// `Struct` represents a structured data value, consisting of fields
// which map to dynamically typed values. In some languages, `Struct`
// might be supported by a native representation. For example, in
// scripting languages like JS a struct is represented as an
// object. The details of that representation are described together
// with the proto support for the language.
//
// The JSON representation for `Struct` is JSON object.
@interface GPBStruct : GPBMessage

// Map of dynamically typed values.
// |fields| values are |GPBValue|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary *fields;
@property(nonatomic, readonly) NSUInteger fields_Count;

@end

#pragma mark - GPBValue

typedef GPB_ENUM(GPBValue_FieldNumber) {
  GPBValue_FieldNumber_NullValue = 1,
  GPBValue_FieldNumber_NumberValue = 2,
  GPBValue_FieldNumber_StringValue = 3,
  GPBValue_FieldNumber_BoolValue = 4,
  GPBValue_FieldNumber_StructValue = 5,
  GPBValue_FieldNumber_ListValue = 6,
};

typedef GPB_ENUM(GPBValue_Kind_OneOfCase) {
  GPBValue_Kind_OneOfCase_GPBUnsetOneOfCase = 0,
  GPBValue_Kind_OneOfCase_NullValue = 1,
  GPBValue_Kind_OneOfCase_NumberValue = 2,
  GPBValue_Kind_OneOfCase_StringValue = 3,
  GPBValue_Kind_OneOfCase_BoolValue = 4,
  GPBValue_Kind_OneOfCase_StructValue = 5,
  GPBValue_Kind_OneOfCase_ListValue = 6,
};

// `Value` represents a dynamically typed value which can be either
// null, a number, a string, a boolean, a recursive struct value, or a
// list of values. A producer of value is expected to set one of that
// variants, absence of any variant indicates an error.
//
// The JSON representation for `Value` is JSON value.
@interface GPBValue : GPBMessage

// The kind of value.
@property(nonatomic, readonly) GPBValue_Kind_OneOfCase kindOneOfCase;

// Represents a null value.
@property(nonatomic, readwrite) GPBNullValue nullValue;

// Represents a double value.
@property(nonatomic, readwrite) double numberValue;

// Represents a string value.
@property(nonatomic, readwrite, copy, null_resettable) NSString *stringValue;

// Represents a boolean value.
@property(nonatomic, readwrite) BOOL boolValue;

// Represents a structured value.
@property(nonatomic, readwrite, strong, null_resettable) GPBStruct *structValue;

// Represents a repeated `Value`.
@property(nonatomic, readwrite, strong, null_resettable) GPBListValue *listValue;

@end

int32_t GPBValue_NullValue_RawValue(GPBValue *message);
void SetGPBValue_NullValue_RawValue(GPBValue *message, int32_t value);

void GPBValue_ClearKindOneOfCase(GPBValue *message);

#pragma mark - GPBListValue

typedef GPB_ENUM(GPBListValue_FieldNumber) {
  GPBListValue_FieldNumber_ValuesArray = 1,
};

// `ListValue` is a wrapper around a repeated field of values.
//
// The JSON representation for `ListValue` is JSON array.
@interface GPBListValue : GPBMessage

// Repeated field of dynamically typed values.
// |valuesArray| contains |GPBValue|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *valuesArray;
@property(nonatomic, readonly) NSUInteger valuesArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
