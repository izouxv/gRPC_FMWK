//
//  gRPC_Test.swift
//  gRPC_Test
//
//  Created by zouxu on 28/4/16.
//
//

import XCTest

class gRPC_Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    
    
    // MARK: TEST GRPC
    // MARK: - TEST GRPC WITH LINE
    
    // TODO: need test
    
    // FIXME: need fix
    
    func testGRPC(){
        let kHostAddress = "127.0.0.1:50000"
        let runLoopRef = CFRunLoopGetCurrent()
        GRPCCall.useInsecureConnectionsForHost(kHostAddress)
        let client = HLWGreeter.serviceWithHost(kHostAddress)
        let request = HLWHelloRequest()
        request.name = "Objective-C";
        client.sayHelloWithRequest(request) { (responce:HLWHelloReply! , err:NSError! ) -> Void in
            print("%s", responce.message)
            CFRunLoopStop(runLoopRef);
        }
        CFRunLoopRun()
    }
    
    
    
}



 



































