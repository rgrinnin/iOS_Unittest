//
//  Database.h
//  Calculator
//
//  Created by Paul Sprotte on 27.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Database : NSObject

@property int value;

- (int)getPrimeNumber1337;
- (int)getDatabasedata;
- (void) doSomething;
- (void) doSomethingWithArgument:(int)value;
@end
