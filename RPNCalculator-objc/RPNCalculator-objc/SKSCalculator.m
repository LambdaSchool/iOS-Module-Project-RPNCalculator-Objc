//
//  SKSCalculator.m
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSCalculator.h"
#import "SKSStack.h"

@interface SKSCalculator() {
}
@property SKSStack *stack;

@end

@implementation SKSCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[SKSStack alloc] init];
    }
    return self;
}

- (double)topValue {
    return [[self.stack peek] doubleValue];
}

- (void)pushNumber:(double)value {
    [self.stack push: [NSNumber numberWithDouble:value]];
}

- (void)applyOperator:(Operator)operator {


    double num1 = [[self.stack pop] doubleValue];
    double num2 = [[self.stack pop] doubleValue];
    double result = 0;

    switch (operator) {
        case add:
            result = num1 + num2;
            break;
        case subtract:
            result = num1 - num2;
            break;
        case multiply:
            result = num1 * num2;
            break;
        case divide:
            result = num1 / num2;
            break;
    }

    [self pushNumber:result];
}

- (void)clear {
    self.stack = nil;
}

@end
