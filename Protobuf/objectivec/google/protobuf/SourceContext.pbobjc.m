// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/protobuf/source_context.proto

#import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#import <Protobuf/SourceContext.pbobjc.h>
// @@protoc_insertion_point(imports)

#pragma mark - GPBSourceContextRoot

@implementation GPBSourceContextRoot

@end

#pragma mark - GPBSourceContextRoot_FileDescriptor

static GPBFileDescriptor *GPBSourceContextRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.protobuf"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GPBSourceContext

@implementation GPBSourceContext

@dynamic fileName;

typedef struct GPBSourceContext__storage_ {
  uint32_t _has_storage_[1];
  NSString *fileName;
} GPBSourceContext__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fileName",
        .number = GPBSourceContext_FieldNumber_FileName,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(GPBSourceContext__storage_, fileName),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GPBSourceContext class]
                                     rootClass:[GPBSourceContextRoot class]
                                          file:GPBSourceContextRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(GPBSourceContext__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)
