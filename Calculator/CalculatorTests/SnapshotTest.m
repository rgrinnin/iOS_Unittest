//
//  SnapshotTest.m
//  Calculator
//
//  Created by Paul Sprotte on 28.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//

#import "FBSnapshotTestCase.h"
#import "ViewController.h"
@interface SnapshotTest : FBSnapshotTestCase

@end

@implementation SnapshotTest

- (void)setUp {
    [super setUp];
    
    // Flip this to YES to record images in the reference image directory.
    // You need to do this the first time you create a test and whenever you change the snapshotted views.
    // Tests running in record mode will allways fail so that you know that you have to do something here before you commit.
    self.recordMode = NO;

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)_SKIPtestExample {
    ViewController *vc = [ViewController new];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
    
    FBSnapshotVerifyView(vc.view, nil);
}



@end
