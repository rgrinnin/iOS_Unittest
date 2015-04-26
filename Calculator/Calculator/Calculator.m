//
//  Calculator.m
//  Calculator
//
//  Created by Paul Sprotte on 26.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
+(int)addA:(int)a  andB:(int)b{
    int sum =  a + b;
    return sum;
}
+(int)subtractA:(int)a  andB:(int)b{
    int sum =  a - b;
    return sum;
}
+(int)divideA:(int)a  andB:(int)b{
    int sum =  a / b;
    return sum;
}
+(int)multiplyA:(int)a andB:(int)b{
    int sum =  a * b;
    return sum;
}
@end
