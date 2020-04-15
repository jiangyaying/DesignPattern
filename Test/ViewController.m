//
//  ViewController.m
//  Test
//
//  Created by jiang on 2020/4/12.
//  Copyright © 2020 jiang. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self strategy];
    // Do any additional setup after loading the view.
}

#pragma mark 简单工厂模式
- (void)OperationFactory{
    OperationFactory *fac = [[OperationFactory alloc] init];
    fac.operation = [fac createOperation:@"+"];
    fac.operation.numberA = 12;
    fac.operation.numberB = 13;
    NSLog(@"%f", [fac.operation getResult]);
}

- (void)cashFactory{
    CashSuper *csuper = [[[CashFactory alloc] init] createCashAccept:@"打8折"];
    double price = [csuper acceptCash:300];
    NSLog(@"%f", price);
}

#pragma mark 策略模式
- (void)strategy{
    CashContext *context = [[CashContext alloc] init];
    [context CashContext:@"满300返100"];
    double price = [context GetResult:300];
    NSLog(@"%f", price);
}
@end
