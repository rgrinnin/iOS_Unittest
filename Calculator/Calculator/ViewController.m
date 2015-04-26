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
int a = 0;
int b = 0;
char nextOperation;

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)buttonAction:(id)sender {
    NSString *str = [_viewText.text stringByAppendingString:[(UIButton *)sender currentTitle]];
    a = [str intValue];
    _viewText.text =str;
}
- (IBAction)operationButtonAction:(id)sender {
    switch (*[[sender currentTitle] UTF8String]) {
        case '=':
            [self calculat];
            break;
        case 'C':
            a = b = 0;
            _viewText.text =@"";
            break;
        default:
            nextOperation = *[[sender currentTitle] UTF8String];
            b = a;
            _viewText.text =@"";
            break;
    }
}
-(void) calculat{
    switch (nextOperation) {
        case '+':
            a = [Calculator addA:a andB:b];
            _viewText.text = [@(a) stringValue];
            break;
        case '-':
            a = [Calculator subtractA:a andB:b];
            _viewText.text = [@(a) stringValue];
            break;
        case '*':
            a = [Calculator multiplyA:a andB:b];
            _viewText.text = [@(a) stringValue];
            break;
        case '/':
            a = [Calculator divideA:a andB:b];
            _viewText.text = [@(a) stringValue];
            break;
        default:
            break;
    }
}
@end