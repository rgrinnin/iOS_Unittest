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
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
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
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
