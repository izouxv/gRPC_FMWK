#import "Test.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation RMTTestService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"grpc.testing" serviceName:@"TestService"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark EmptyCall(Empty) returns (Empty)

/**
 * One empty request followed by one empty response.
 */
- (void)emptyCallWithRequest:(GPBEmpty *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEmptyCallWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * One empty request followed by one empty response.
 */
- (GRPCProtoCall *)RPCToEmptyCallWithRequest:(GPBEmpty *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EmptyCall"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnaryCall(SimpleRequest) returns (SimpleResponse)

/**
 * One request followed by one response.
 */
- (void)unaryCallWithRequest:(RMTSimpleRequest *)request handler:(void(^)(RMTSimpleResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUnaryCallWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * One request followed by one response.
 */
- (GRPCProtoCall *)RPCToUnaryCallWithRequest:(RMTSimpleRequest *)request handler:(void(^)(RMTSimpleResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UnaryCall"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RMTSimpleResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark StreamingOutputCall(StreamingOutputCallRequest) returns (stream StreamingOutputCallResponse)

/**
 * One request followed by a sequence of responses (streamed download).
 * The server returns the payload with client desired type and sizes.
 */
- (void)streamingOutputCallWithRequest:(RMTStreamingOutputCallRequest *)request eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToStreamingOutputCallWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * One request followed by a sequence of responses (streamed download).
 * The server returns the payload with client desired type and sizes.
 */
- (GRPCProtoCall *)RPCToStreamingOutputCallWithRequest:(RMTStreamingOutputCallRequest *)request eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"StreamingOutputCall"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RMTStreamingOutputCallResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark StreamingInputCall(stream StreamingInputCallRequest) returns (StreamingInputCallResponse)

/**
 * A sequence of requests followed by one response (streamed upload).
 * The server returns the aggregated size of client payload as the result.
 */
- (void)streamingInputCallWithRequestsWriter:(GRXWriter *)requestWriter handler:(void(^)(RMTStreamingInputCallResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToStreamingInputCallWithRequestsWriter:requestWriter handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * A sequence of requests followed by one response (streamed upload).
 * The server returns the aggregated size of client payload as the result.
 */
- (GRPCProtoCall *)RPCToStreamingInputCallWithRequestsWriter:(GRXWriter *)requestWriter handler:(void(^)(RMTStreamingInputCallResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"StreamingInputCall"
            requestsWriter:requestWriter
             responseClass:[RMTStreamingInputCallResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark FullDuplexCall(stream StreamingOutputCallRequest) returns (stream StreamingOutputCallResponse)

/**
 * A sequence of requests with each request served by the server immediately.
 * As one request could lead to multiple responses, this interface
 * demonstrates the idea of full duplexing.
 */
- (void)fullDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToFullDuplexCallWithRequestsWriter:requestWriter eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * A sequence of requests with each request served by the server immediately.
 * As one request could lead to multiple responses, this interface
 * demonstrates the idea of full duplexing.
 */
- (GRPCProtoCall *)RPCToFullDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"FullDuplexCall"
            requestsWriter:requestWriter
             responseClass:[RMTStreamingOutputCallResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark HalfDuplexCall(stream StreamingOutputCallRequest) returns (stream StreamingOutputCallResponse)

/**
 * A sequence of requests followed by a sequence of responses.
 * The server buffers all the client requests and then serves them in order. A
 * stream of responses are returned to the client when the server starts with
 * first request.
 */
- (void)halfDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToHalfDuplexCallWithRequestsWriter:requestWriter eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * A sequence of requests followed by a sequence of responses.
 * The server buffers all the client requests and then serves them in order. A
 * stream of responses are returned to the client when the server starts with
 * first request.
 */
- (GRPCProtoCall *)RPCToHalfDuplexCallWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, RMTStreamingOutputCallResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"HalfDuplexCall"
            requestsWriter:requestWriter
             responseClass:[RMTStreamingOutputCallResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
