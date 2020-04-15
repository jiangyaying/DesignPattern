//
//  FactoryObject.m
//  Test
//
//  Created by jiang on 2020/4/13.
//  Copyright © 2020 jiang. All rights reserved.
//

#import "OperationFactory.h"
@interface OperationFactory()

@property (nonatomic, copy) NSArray *array;

@end
@implementation OperationFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = @[@"+", @"-", @"*", @"/"];
        self.operation = [[Operation alloc] init];
    }
    return self;
}

- (Operation *)createOperation:(NSString *)operation{
    NSInteger i = [self.array indexOfObject:operation];
    switch (i) {
        case 0:
            self.operation = [[Add alloc] init];
            break;
        case 1:
            self.operation = [[Sub alloc] init];
            break;
        case 2:
            self.operation = [[Mul alloc] init];
            break;
        case 3:
            self.operation = [[Div alloc] init];
            break;
        default:
            break;
    }
    return self.operation;
}

@end
