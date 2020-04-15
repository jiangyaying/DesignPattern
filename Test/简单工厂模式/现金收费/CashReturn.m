//
//  CashReturn.m
//  Test
//
//  Created by jiang on 2020/4/14.
//  Copyright © 2020 jiang. All rights reserved.
//

#import "CashReturn.h"
@interface CashReturn()

@property (nonatomic) double moneyCondition;
@property (nonatomic) double moneyReturn;

@end
@implementation CashReturn

- (void)cashReturn:(NSString *)moneyCondition moneyReturn:(NSString *)moneyReturn{
    self.moneyCondition = [moneyCondition doubleValue];
    self.moneyReturn = [moneyReturn doubleValue];
}

- (double)acceptCash:(double)money{
    double result = money;
    if (money >= self.moneyCondition) {
        result = money - floor(money / self.moneyCondition) * self.moneyReturn;
    }
    return result;
}
@end
