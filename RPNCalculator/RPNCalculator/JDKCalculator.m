//
//  JDKCalculator.m
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKCalculator.h"
#import "JDKStack.h"

@interface JDKCalculator ()

@property JDKStack *stack;

@end

@implementation JDKCalculator

- (instancetype)init
{
    if (self = [super init]) {
        NSArray *array = [[NSArray alloc] init];
        _stack = [[JDKStack alloc] initWith:array];
    }
    return self;
}

- (double)topValue
{
    return [[self.stack peek] doubleValue];
}

- (void)pushNumber:(double)value
{
    [self.stack push:[NSNumber numberWithDouble:value]];
}

- (void)applyOperator:(Operator)operator
{
    double firstDigit = [[self.stack pop] doubleValue];
    double secondDigit = [[self.stack pop] doubleValue];
    double result = 0;

    switch (operator) {
        case add:
            result = firstDigit + secondDigit;
            break;
        case subtract:
            result = firstDigit - secondDigit;
            break;
        case multiply:
            result = firstDigit * secondDigit;
            break;
        case divide:
            result = firstDigit / secondDigit;
            break;
    }

    [self pushNumber:result];
}

- (void)clear
{
    self.stack = nil;
}

@end
