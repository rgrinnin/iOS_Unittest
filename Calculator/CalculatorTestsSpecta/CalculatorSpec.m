//
//  CalculatorSpec.m
//  Calculator
//
//  Created by Paul Sprotte on 26.04.15.
//  Copyright 2015 Paul Sprotte. All rights reserved.
//

#import "Specta.h"
#import "Calculator.h"
#import "Expecta.h"


SpecBegin(Calculator)

describe(@"Calculator", ^{
    
    beforeAll(^{
        
    });
    
    beforeEach(^{
        
    });
    
    describe(@"Calculator operations", ^{
        it(@"it should add to numbers correctly", ^{
            expect([Calculator addA:10 andB:10]).to.equal(20);
        });
        
        it(@"it should subtract to numbers correctly", ^{
            expect([Calculator subtractA:10 andB:20]).to.equal(-10);
        });
        
        it(@"it should divide to numbers correctly", ^{
            expect([Calculator divideA:10 andB:2]).to.equal(5);
        });
        
        it(@"it should multipy to numbers correctly", ^{
            expect([Calculator multiplyA:10 andB:2]).to.equal(20);
        });
    });
    
    describe((@"Networking calculations"), ^{
        it(@"should fetch result from network",^{
            waitUntil(^(DoneCallback done) {
                usleep(1000000);
                expect(0).to.equal(0);
                done();
            });
            
        });        
    });
    
    describe(@"Performence Test", ^{
        it(@"should fetch result",^{
            [self measureBlock:^{
                for (int i = 1; i <INT16_MAX; i++) {
                    for (int k = 1; k <INT16_MAX; k++) {
                    };
                };
            }];            
        });
    });
    
    afterEach(^{
        
    });
    
    afterAll(^{
        
    });
});

SpecEnd
