#import "Test.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
  #import <Protobuf/Empty.pbobjc.h>
#else
  #import "google/protobuf/Empty.pbobjc.h"
#endif
#import "Messages.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol RMTTestService <NSObject>

#pragma mark EmptyCall(Empty) returns (Empty)

/**
 * One empty request followed by one empty response.
 */
- (void)emptyCallWithRequest:(GPBEmpty *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * One empty request followed by one empty response.
 */
- (GRPCProtoCall *)RPCToEmptyCallWithRequest:(GPBEmpty *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnaryCall(SimpleRequest) returns (SimpleResponse)

/**
 * One request followed by one response.
 */
- (void)unaryCallWithRequest:(RMTSimpleRequest *)request handler:(void(^)(RMTSimpleResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * One request followed by one response.
 */
- (GRPCProtoCall *)RPCToUnaryCallWithRequest:(RMTSimpleRequest *)request handler:(void(^)(RMTSimpleResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark StreamingOutputCall(StreamingOutputCallRequest) returns (stream StreamingOutputCallResponse)

/**
 * One request followed by a sequence of responses (streamed download).
 * The server returns the payload with client desired type and sizes.
 */
- (void)streamingOutputCallWithRequest:(RMTStreamingOutputCallRequest *)request eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * One request followed by a sequence of responses (streamed download).
 * The server returns the payload with client desired type and sizes.
 */
- (GRPCProtoCall *)RPCToStreamingOutputCallWithRequest:(RMTStreamingOutputCallRequest *)request eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark StreamingInputCall(stream StreamingInputCallRequest) returns (StreamingInputCallResponse)

/**
 * A sequence of requests followed by one response (streamed upload).
 * The server returns the aggregated size of client payload as the result.
 */
- (void)streamingInputCallWithRequestsWriter:(GRXWriter *)requestWriter handler:(void(^)(RMTStreamingInputCallResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * A sequence of requests followed by one response (streamed upload).
 * The server returns the aggregated size of client payload as the result.
 */
- (GRPCProtoCall *)RPCToStreamingInputCallWithRequestsWriter:(GRXWriter *)requestWriter handler:(void(^)(RMTStreamingInputCallResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FullDuplexCall(stream StreamingOutputCallRequest) returns (stream StreamingOutputCallResponse)

/**
 * A sequence of requests with each request served by the server immediately.
 * As one request could lead to multiple responses, this interface
 * demonstrates the idea of full duplexing.
 */
- (void)fullDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * A sequence of requests with each request served by the server immediately.
 * As one request could lead to multiple responses, this interface
 * demonstrates the idea of full duplexing.
 */
- (GRPCProtoCall *)RPCToFullDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark HalfDuplexCall(stream StreamingOutputCallRequest) returns (stream StreamingOutputCallResponse)

/**
 * A sequence of requests followed by a sequence of responses.
 * The server buffers all the client requests and then serves them in order. A
 * stream of responses are returned to the client when the server starts with
 * first request.
 */
- (void)halfDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * A sequence of requests followed by a sequence of responses.
 * The server buffers all the client requests and then serves them in order. A
 * stream of responses are returned to the client when the server starts with
 * first request.
 */
- (GRPCProtoCall *)RPCToHalfDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface RMTTestService : GRPCProtoService<RMTTestService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
