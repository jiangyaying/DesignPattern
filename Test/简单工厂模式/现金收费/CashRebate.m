//
//  CashRebate.m
//  Test
//
//  Created by jiang on 2020/4/14.
//  Copyright © 2020 jiang. All rights reserved.
//

#import "CashRebate.h"
@interface CashRebate()

@property (nonatomic) double privateMoneyRebate;

@end
@implementation CashRebate

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (double)acceptCash:(double)money{
    self.privateMoneyRebate = [self.moneyRebate doubleValue];
    return money * self.privateMoneyRebate;
}

@end
