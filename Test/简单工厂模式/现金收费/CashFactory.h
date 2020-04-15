//
//  CashFactory.h
//  Test
//
//  Created by jiang on 2020/4/14.
//  Copyright © 2020 jiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturn.h"
NS_ASSUME_NONNULL_BEGIN

/**
 题目要求：做一个商场收银软件，营业员根据客户所购买商品的单价和数量，向客户收费，增加打折与满减功能。
 */
@interface CashFactory : NSObject

- (CashSuper *)createCashAccept:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
