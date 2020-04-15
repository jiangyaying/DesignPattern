//
//  CashContext.m
//  Test
//
//  Created by jiang on 2020/4/15.
//  Copyright © 2020 jiang. All rights reserved.
//

#import "CashContext.h"
@interface CashContext()

@property (nonatomic, strong) CashSuper *cs;
@property (nonatomic, copy) NSArray *array;

@end
@implementation CashContext
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = @[@"正常收费", @"满300返100", @"打8折"];
    }
    return self;
}

- (void)CashContext:(NSString *)type{
    self.cs = nil;
    NSInteger i = [self.array indexOfObject:type];
    switch (i) {
        case 0:{
            CashNormal *normal = [[CashNormal alloc] init];
            self.cs = normal;
        }
            break;
        case 1:{
            CashReturn *cr1 = [[CashReturn alloc] init];
            [cr1 cashReturn:@"300" moneyReturn:@"100"];
            self.cs = cr1;
        }
            break;
        case 2:{
            CashRebate *cr2 = [[CashRebate alloc] init];
            cr2.moneyRebate = @"0.8";
            self.cs = cr2;
        }
            break;
        default:
            break;
    }
}

- (double)GetResult:(double)money{
    return [self.cs acceptCash:money];
}

@end
