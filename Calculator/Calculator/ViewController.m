//
//  ViewController.m
//  Calculator
//
//  Created by Paul Sprotte on 23.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//


#import "ViewController.h"
#import "Calculator.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *viewText;
@end

@implementation ViewController
int _a = 0;
int _b = 0;
char _nextOperation;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Temporary directory is: %@", NSTemporaryDirectory());
}


/**
 *
 **/
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



/**
 *
 **/
- (IBAction)buttonAction:(id)sender {
    NSString *str = [_viewText.text stringByAppendingString:[(UIButton *)sender currentTitle]];
    _a = [str intValue];
    _viewText.text =str;
}



/**
 *
 **/
- (IBAction)operationButtonAction:(id)sender {
    switch (*[[sender currentTitle] UTF8String]) {
        case '=':
            [self calculat];
            break;
        case 'C':
            _a = _b = 0;
            _viewText.text =@"";
            break;
        default:
            _nextOperation = *[[sender currentTitle] UTF8String];
            _b = _a;
            _viewText.text =@"";
            break;
    }
}



/**
 *
 **/
-(void) calculat{
    switch (_nextOperation) {
        case '+':
            _a = [Calculator addA:_a andB:_b];
            _viewText.text = [@(_a) stringValue];
            break;
        case '-':
            _a = [Calculator subtractA:_a andB:_b];
            _viewText.text = [@(_a) stringValue];
            break;
        case '*':
            _a = [Calculator multiplyA:_a andB:_b];
            _viewText.text = [@(_a) stringValue];
            break;
        case '/':
            _a = [Calculator divideA:_a andB:_b];
            _viewText.text = [@(_a) stringValue];
            break;
        default:
            break;
    }
}
@end