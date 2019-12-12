//
//  JLRCalculator.m
//  RPNLogic
//
//  Created by Jesse Ruiz on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRCalculator.h"
#import "JLRStack.h"

@interface JLRCalculator ()

@property JLRStack *stack;

@end

@implementation JLRCalculator

- (void)pushNumber:(double)value {
    [self.stack push:value];
}


- (void)applyOperator:(operators)operator {
    double num1 = [self.stack pop];
    double num2 = [self.stack pop];
    
    double result;
    
    switch (operator) {
        case kAddition:
            result = num1 + num2;
        case kSubtraction:
            result = num1 - num2;
        case kMultiplication:
            result = num1 * num2;
        case kDivision:
            result = num1 / num2;
        default:
            break;
    }
    [self.stack push:result];
}


- (void)clear {
    
}

- (double)topValue {
    return [self.stack peek];
}

@end
