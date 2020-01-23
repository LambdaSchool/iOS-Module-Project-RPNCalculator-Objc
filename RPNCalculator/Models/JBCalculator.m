//
//  JBCalculator.m
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBCalculator.h"
#import "JBStack.h"

@interface JBCalculator ()

@property JBStack *stack;

-(double) operateWithOperator:(JBOperator)operator
                onFirstNumber:(double)lhs
              andSecondNumber:(double)rhs;

@end


@implementation JBCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[JBStack alloc] initWithArray:@[]];
    }
    return self;
}

#pragma mark - Public API

- (void)pushNumber:(double)value
{
    [self.stack push:[NSNumber numberWithDouble:value]];
}

- (void)applyOperator:(JBOperator)operator
{
    NSNumber *rhs = [self.stack pop];
    NSNumber *lhs = [self.stack pop];

    double result = [self operateWithOperator:operator
                                onFirstNumber:[lhs doubleValue]
                              andSecondNumber:[rhs doubleValue]];
    [self.stack push:[NSNumber numberWithDouble:result]];
}

- (void)clear
{
    [self.stack clear];
}

#pragma mark - Private

-(double) operateWithOperator:(JBOperator)operator
                onFirstNumber:(double)lhs
              andSecondNumber:(double)rhs
{
    switch (operator) {
        case jbAdd:
            return lhs + rhs;
        case jbSubtract:
            return lhs - rhs;
        case jbMultiply:
            return lhs * rhs;
        case jbDivide:
            return lhs / rhs;
    }
}

@end
