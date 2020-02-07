//
//  VVSCalculator.m
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSCalculator.h"
#import "VVSStack.h"

@interface VVSCalculator ()

@property (nonatomic, readonly) VVSStack *stack;

@end

@implementation VVSCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSArray *array = [[NSArray alloc] init];
        _stack = [[VVSStack alloc] initWithArray:array];
    }
    return self;
}

- (double)topValue
{
    return [[_stack peek] doubleValue];
}

- (void)pushNumber:(double)value
{
    return [_stack push:[NSNumber numberWithDouble:value]];
}

- (void)applyOperator:(Operator)operator
{
    double firstPoppedElement = [[_stack pop] doubleValue];
    double secondPoppedElement = [[_stack pop] doubleValue];
    
    double result = 0;
    
    switch (operator) {
        case Addition:
            result = firstPoppedElement + secondPoppedElement;
        case Substraction:
            result = firstPoppedElement - secondPoppedElement;
        case Multiply:
            result = firstPoppedElement * secondPoppedElement;
        case Division:
            result = firstPoppedElement / secondPoppedElement;
    }
    
    [_stack push:[NSNumber numberWithDouble:result]];
}

- (void)clear {
    _stack = nil;
}

@end
