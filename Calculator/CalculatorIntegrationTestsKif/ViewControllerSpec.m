//
//  ViewControllerSpec.m
//  Calculator
//
//  Created by Paul Sprotte on 27.04.15.
//  Copyright 2015 Paul Sprotte. All rights reserved.
//

#import "Specta.h"
#import "ViewController.h"
#import <KIF.h>
#import "Expecta.h"

SpecBegin(ViewController)
NSArray* array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0",@"+",@"-",@"/",@"*",@"C",@"=",];
describe(@"basic arith", ^{
    
    describe(@"do operations nd showing result", ^{
        
        it(@"should add tow numbers and displying the right result", ^{
            [tester tapViewWithAccessibilityLabel:@"1" traits:UIAccessibilityTraitButton];
            [tester tapViewWithAccessibilityLabel:@"+" traits:UIAccessibilityTraitButton];
            [tester tapViewWithAccessibilityLabel:@"1" traits:UIAccessibilityTraitButton];
            [tester tapViewWithAccessibilityLabel:@"=" traits:UIAccessibilityTraitButton];
            UITextField *tableView = (UITextField *)[tester waitForViewWithAccessibilityLabel:@"ResultLabel"];
            expect([tableView.text intValue]).to.equal(2);
        });
        
        it(@"should do random stuff", ^{
            for(int i = 0; i < 100;i++){
                [tester tapViewWithAccessibilityLabel:array[(int)arc4random_uniform(array.count)] traits:UIAccessibilityTraitButton];

            }
        });
        
    });
    
});

SpecEnd
