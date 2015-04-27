//
//  CalculatorTestsMockingStubbing.m
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

@interface CalculatorTestsMockingStubbing : XCTestCase
@property Database *databaseMocktio;
@property id databaseOCMock;
@end

@implementation CalculatorTestsMockingStubbing

- (void)setUp {
    
    [super setUp];
    
    self.databaseMocktio = mock([Database class]);
    self.databaseOCMock = OCMClassMock([Database class]);
}
- (void)testMockitoStub
{
    [given([self.databaseMocktio getDatabasedata]) willReturnInteger:3];
    
    expect([self.databaseMocktio getDatabasedata]).to.equal(3);
}


- (void)testOCMockStub
{
    [[[self.databaseOCMock  stub] andReturnValue:@42] getPrimeNumber1337];
    
    expect([self.databaseOCMock  getPrimeNumber1337]).will.equal(42);
}
    
@end
