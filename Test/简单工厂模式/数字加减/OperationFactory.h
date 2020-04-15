//
//  FactoryObject.h
//  Test
//
//  Created by jiang on 2020/4/13.
//  Copyright © 2020 jiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"
#import "Add.h"
#import "Sub.h"
#import "Mul.h"
#import "Div.h"
NS_ASSUME_NONNULL_BEGIN

/**
 简单工厂模式
 到底要实例化谁，将来会不增加实例化的对象；考虑用一个单独的类做这个创造实例的工程，就是工厂
 题目要求：使用面向对象语言实现一个计算器控制台程序，要求输入两个数和运算符号，得到结果
 */
@interface OperationFactory : NSObject

- (Operation *)createOperation:(NSString *)operation;
@property (nonatomic, strong) Operation *operation;

@end

NS_ASSUME_NONNULL_END
