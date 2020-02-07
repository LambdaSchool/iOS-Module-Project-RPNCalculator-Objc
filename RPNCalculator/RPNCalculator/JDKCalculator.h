//
//  JDKCalculator.h
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Operator) {
    add,
    subtract,
    multiply,
    divide
};

@interface JDKCalculator : NSObject

@property (nonatomic, readonly) double topValue;

- (void)pushNumber:(double)value;
- (void)applyOperator:(Operator)operator;
- (void)clear;

@end
