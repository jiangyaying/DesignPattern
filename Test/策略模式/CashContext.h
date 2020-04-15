//
//  CashContext.h
//  Test
//
//  Created by jiang on 2020/4/15.
//  Copyright © 2020 jiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturn.h"
NS_ASSUME_NONNULL_BEGIN

/**
 策略模式（strategy）：定义了算法家族，分别封装起来，让他们之间可以互相替换，此模式让算法的变化不会影响到使用算法的客户。
 */
@interface CashContext : NSObject

- (void)CashContext:(NSString *)cs;
- (double)GetResult:(double)money;

@end

NS_ASSUME_NONNULL_END
