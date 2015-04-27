//
//  CalculatorTestsMockingVerify.m
//  Calculator
//
//  Created by Paul Sprotte on 27.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

#import "Database.h"
#import "Expecta.h"

@interface CalculatorTestsMockingVerify : XCTestCase
@property Database *databaseMocktio;
@property id databaseOCMock;
@end

@implementation CalculatorTestsMockingVerify

- (void)setUp {
    [super setUp];
    self.databaseMocktio = mock([Database class]);
    self.databaseOCMock = OCMClassMock([Database class]);
}

- (void)tearDown {
    [super tearDown];
}

#pragma Simple Verify

- (void)testVerifyOCMockito {
    
    [self.databaseMocktio doSomething];
    [verify(self.databaseMocktio) doSomething];

}

- (void)testVerifyOCMock {
    
    [self.databaseOCMock doSomething];
    OCMVerify([self.databaseOCMock doSomething]);
    
}

#pragma Verify call counts

- (void)testVerifyTimesOCMockito {
    
    [self.databaseMocktio doSomething];
    [self.databaseMocktio doSomething];
    [self.databaseMocktio doSomething];
    
    [verifyCount(self.databaseMocktio, times(3)) doSomething];
    [verifyCount(self.databaseMocktio, atLeast(3)) doSomething];
    
}

- (void)testVerifyTimesOCMock {
    
    [[self.databaseOCMock expect] doSomething];
    [[self.databaseOCMock expect] doSomething];
    [[self.databaseOCMock expect] doSomething];
    
    [self.databaseOCMock doSomething];
    [self.databaseOCMock doSomething];
    [self.databaseOCMock doSomething];
    
    [self.databaseOCMock verify];
}

#pragma mark Verify Arguments

- (void)testVerifyArgumentsOCMockito {
    
    [self.databaseMocktio doSomethingWithArgument:3];
    
    [verify(self.databaseMocktio) doSomethingWithArgument:3];
}

- (void)testVerifyArgumentsOCMock {
    
    [[self.databaseOCMock expect] doSomethingWithArgument:3];
    
    [self.databaseOCMock doSomethingWithArgument:3];
    
    [self.databaseOCMock verify];
}

@end