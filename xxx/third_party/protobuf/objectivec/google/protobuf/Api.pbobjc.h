// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/protobuf/api.proto

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

@class GPBMethod;
@class GPBMixin;
@class GPBOption;
@class GPBSourceContext;
GPB_ENUM_FWD_DECLARE(GPBSyntax);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GPBApiRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface GPBApiRoot : GPBRootObject
@end

#pragma mark - GPBApi

typedef GPB_ENUM(GPBApi_FieldNumber) {
  GPBApi_FieldNumber_Name = 1,
  GPBApi_FieldNumber_MethodsArray = 2,
  GPBApi_FieldNumber_OptionsArray = 3,
  GPBApi_FieldNumber_Version = 4,
  GPBApi_FieldNumber_SourceContext = 5,
  GPBApi_FieldNumber_MixinsArray = 6,
  GPBApi_FieldNumber_Syntax = 7,
};

/// Api is a light-weight descriptor for a protocol buffer service.
@interface GPBApi : GPBMessage

/// The fully qualified name of this api, including package name
/// followed by the api's simple name.
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/// The methods of this api, in unspecified order.
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GPBMethod*> *methodsArray;
/// The number of items in @c methodsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger methodsArray_Count;

/// Any metadata attached to the API.
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GPBOption*> *optionsArray;
/// The number of items in @c optionsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger optionsArray_Count;

/// A version string for this api. If specified, must have the form
/// `major-version.minor-version`, as in `1.10`. If the minor version
/// is omitted, it defaults to zero. If the entire version field is
/// empty, the major version is derived from the package name, as
/// outlined below. If the field is not empty, the version in the
/// package name will be verified to be consistent with what is
/// provided here.
///
/// The versioning schema uses [semantic
/// versioning](http://semver.org) where the major version number
/// indicates a breaking change and the minor version an additive,
/// non-breaking change. Both version numbers are signals to users
/// what to expect from different versions, and should be carefully
/// chosen based on the product plan.
///
/// The major version is also reflected in the package name of the
/// API, which must end in `v<major-version>`, as in
/// `google.feature.v1`. For major versions 0 and 1, the suffix can
/// be omitted. Zero major versions must only be used for
/// experimental, none-GA apis.
@property(nonatomic, readwrite, copy, null_resettable) NSString *version;

/// Source context for the protocol buffer service represented by this
/// message.
@property(nonatomic, readwrite, strong, null_resettable) GPBSourceContext *sourceContext;
/// Test to see if @c sourceContext has been set.
@property(nonatomic, readwrite) BOOL hasSourceContext;

/// Included APIs. See [Mixin][].
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GPBMixin*> *mixinsArray;
/// The number of items in @c mixinsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger mixinsArray_Count;

/// The source syntax of the service.
@property(nonatomic, readwrite) enum GPBSyntax syntax;

@end

/// Fetches the raw value of a @c GPBApi's @c syntax property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t GPBApi_Syntax_RawValue(GPBApi *message);
/// Sets the raw value of an @c GPBApi's @c syntax property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetGPBApi_Syntax_RawValue(GPBApi *message, int32_t value);

#pragma mark - GPBMethod

typedef GPB_ENUM(GPBMethod_FieldNumber) {
  GPBMethod_FieldNumber_Name = 1,
  GPBMethod_FieldNumber_RequestTypeURL = 2,
  GPBMethod_FieldNumber_RequestStreaming = 3,
  GPBMethod_FieldNumber_ResponseTypeURL = 4,
  GPBMethod_FieldNumber_ResponseStreaming = 5,
  GPBMethod_FieldNumber_OptionsArray = 6,
  GPBMethod_FieldNumber_Syntax = 7,
};

/// Method represents a method of an api.
@interface GPBMethod : GPBMessage

/// The simple name of this method.
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/// A URL of the input message type.
@property(nonatomic, readwrite, copy, null_resettable) NSString *requestTypeURL;

/// If true, the request is streamed.
@property(nonatomic, readwrite) BOOL requestStreaming;

/// The URL of the output message type.
@property(nonatomic, readwrite, copy, null_resettable) NSString *responseTypeURL;

/// If true, the response is streamed.
@property(nonatomic, readwrite) BOOL responseStreaming;

/// Any metadata attached to the method.
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GPBOption*> *optionsArray;
/// The number of items in @c optionsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger optionsArray_Count;

/// The source syntax of this method.
@property(nonatomic, readwrite) enum GPBSyntax syntax;

@end

/// Fetches the raw value of a @c GPBMethod's @c syntax property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t GPBMethod_Syntax_RawValue(GPBMethod *message);
/// Sets the raw value of an @c GPBMethod's @c syntax property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetGPBMethod_Syntax_RawValue(GPBMethod *message, int32_t value);

#pragma mark - GPBMixin

typedef GPB_ENUM(GPBMixin_FieldNumber) {
  GPBMixin_FieldNumber_Name = 1,
  GPBMixin_FieldNumber_Root = 2,
};

/// Declares an API to be included in this API. The including API must
/// redeclare all the methods from the included API, but documentation
/// and options are inherited as follows:
///
/// - If after comment and whitespace stripping, the documentation
///   string of the redeclared method is empty, it will be inherited
///   from the original method.
///
/// - Each annotation belonging to the service config (http,
///   visibility) which is not set in the redeclared method will be
///   inherited.
///
/// - If an http annotation is inherited, the path pattern will be
///   modified as follows. Any version prefix will be replaced by the
///   version of the including API plus the [root][] path if specified.
///
/// Example of a simple mixin:
///
///     package google.acl.v1;
///     service AccessControl {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v1/{resource=**}:getAcl";
///       }
///     }
///
///     package google.storage.v2;
///     service Storage {
///       rpc GetAcl(GetAclRequest) returns (Acl);
///
///       // Get a data record.
///       rpc GetData(GetDataRequest) returns (Data) {
///         option (google.api.http).get = "/v2/{resource=**}";
///       }
///     }
///
/// Example of a mixin configuration:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///
/// The mixin construct implies that all methods in `AccessControl` are
/// also declared with same name and request/response types in
/// `Storage`. A documentation generator or annotation processor will
/// see the effective `Storage.GetAcl` method after inherting
/// documentation and annotations as follows:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/{resource=**}:getAcl";
///       }
///       ...
///     }
///
/// Note how the version in the path pattern changed from `v1` to `v2`.
///
/// If the `root` field in the mixin is specified, it should be a
/// relative path under which inherited HTTP paths are placed. Example:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///         root: acls
///
/// This implies the following inherited HTTP annotation:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/acls/{resource=**}:getAcl";
///       }
///       ...
///     }
@interface GPBMixin : GPBMessage

/// The fully qualified name of the API which is included.
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/// If non-empty specifies a path under which inherited HTTP paths
/// are rooted.
@property(nonatomic, readwrite, copy, null_resettable) NSString *root;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
