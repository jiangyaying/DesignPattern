//
//  CashFactory.m
//  Test
//
//  Created by jiang on 2020/4/14.
//  Copyright © 2020 jiang. All rights reserved.
//

#import "CashFactory.h"
#import "CashSuper.h"
@interface CashFactory()

@property (nonatomic, copy) NSArray *array;

@end
@implementation CashFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = @[@"正常收费", @"满300返100", @"打8折"];
    }
    return self;
}

- (CashSuper *)createCashAccept:(NSString *)type{
    NSInteger i = [self.array indexOfObject:type];
    CashSuper *cs = nil;
    switch (i) {
        case 0:
            cs = [[CashNormal alloc] init];
            break;
        case 1:{
            CashReturn *cr1 = [[CashReturn alloc] init];
            [cr1 cashReturn:@"300" moneyReturn:@"100"];
            cs = cr1;
        }
            break;
        case 2:{
            CashRebate *cr2 = [[CashRebate alloc] init];
            cr2.moneyRebate = @"0.8";
            cs = cr2;
        }
            break;
        default:
            break;
    }
    return cs;
}

@end
