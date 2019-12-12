//
//  JLRCalculator.h
//  RPNLogic
//
//  Created by Jesse Ruiz on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLRCalculator : NSObject

typedef NS_ENUM(NSUInteger, operators) {
    kAddition,
    kSubtraction,
    kMultiplication,
    kDivision
};

@property (nonatomic) double topValue;

- (void)pushNumber:(double)value;
- (void)applyOperator:(operators)operator;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
