//
//  Operation.h
//  Test
//
//  Created by jiang on 2020/4/13.
//  Copyright © 2020 jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Operation : NSObject

@property (nonatomic) double numberA;
@property (nonatomic) double numberB;

- (double)getResult;

@end

NS_ASSUME_NONNULL_END
