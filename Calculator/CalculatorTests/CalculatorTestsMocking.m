//
//  CalculatorTestsMocking.m
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

@interface CalculatorTestsMocking : XCTestCase
@property Database *databaseMocktio;
@property id databaseOCMock;
@end

@implementation CalculatorTestsMocking


- (void)testPrimeNumber1337OCMock {
    Database *database = [Database new];
    
    id mockDatabase = [OCMockObject partialMockForObject:database];
    
    [[[mockDatabase stub] andReturnValue:@42] getPrimeNumber1337];
   
    expect([mockDatabase getPrimeNumber1337]).will.equal(42);
}


- (void)testPrimeNumber1337OCMockito{
    Database *mockDatabase = mock([Database class]);
    
    [given([mockDatabase getPrimeNumber1337]) willReturn:@42];
    
    expect([mockDatabase getPrimeNumber1337]).will.equal(42);
}


- (void)testVerifyOCMock{
    id mockDatabase = OCMClassMock([Database class]);
    
    int i = [mockDatabase getPrimeNumber1337];
    
    OCMVerify([mockDatabase getPrimeNumber1337]);
}

- (void)testVerifyOCMockito{
    Database *mockDatabase = mock([Database class]);
    
    int i = [mockDatabase getPrimeNumber1337];
    
    [verify(mockDatabase) getPrimeNumber1337];
}

@end
