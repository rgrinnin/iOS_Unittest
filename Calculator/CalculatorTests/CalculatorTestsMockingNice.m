//
//  CalculatorTestsMockingNice.m
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

@interface CalculatorTestsMockingNice : XCTestCase
@property id seriousDatabase;
@property id niceDatabase;
@end

@implementation CalculatorTestsMockingNice

- (void)setUp {
    
    [super setUp];
    
    self.niceDatabase = [OCMockObject niceMockForClass:[Database class]];
    self.seriousDatabase = [OCMockObject mockForClass:[Database class]];
}

-(void)testOCMockNice{
    
    [self.niceDatabase getDatabasedata];
    
    [self.niceDatabase verify];    
}

- (void)testOCMockSerious{
    
    [[self.seriousDatabase expect] getDatabasedata];
    
    [self.seriousDatabase getDatabasedata];
    
    [self.seriousDatabase verify];
}

@end
