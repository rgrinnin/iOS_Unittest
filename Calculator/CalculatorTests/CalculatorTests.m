//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Paul Sprotte on 26.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTests : XCTestCase

@end

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testAdd {
    XCTAssertEqual([Calculator addA:10 andB:10], 20, @"Addition Failed");
}

- (void)testSubtract {
    XCTAssertEqual([Calculator subtractA:10 andB:20], -10, @"Subtract Failed");
}

- (void)testMultiply {
    XCTAssertEqual([Calculator multiplyA:10 andB:2], 20, @"Multiply Failed");
}

- (void)testDivide {
    XCTAssertEqual([Calculator divideA:10 andB:2], 5, @"Divide Failed");
}

-(void)testNetworkCalculation{
    XCTestExpectation *expectation = [self expectationWithDescription:@"Waiting for network calculations"];
    XCTAssert(true);
    [expectation fulfill];
    //XCTAssert(false);
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
    
}

- (void)testPerformance{
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
