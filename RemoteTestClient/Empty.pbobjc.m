// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: empty.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Empty.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - RMTEmptyRoot

@implementation RMTEmptyRoot

@end

#pragma mark - RMTEmptyRoot_FileDescriptor

static GPBFileDescriptor *RMTEmptyRoot_FileDescriptor(void) {
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

#pragma mark - RMTEmpty

@implementation RMTEmpty


typedef struct RMTEmpty__storage_ {
  uint32_t _has_storage_[0];
} RMTEmpty__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
 
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)
