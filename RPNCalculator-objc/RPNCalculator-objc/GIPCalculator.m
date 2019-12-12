//
//  GIPCalculator.m
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPCalculator.h"
#import "GIPStack.h"

@interface GIPCalculator()

@property GIPStack *stack;

@end

@implementation GIPCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[GIPStack alloc] initWithArray:@[]];
    }
    return self;
}

- (NSNumber *)topValue {
    return [self.stack peek];
}

- (void)pushNumber:(double)value {
    [self.stack push:[NSNumber numberWithDouble:value]];
}

- (void)applyOperator:(Operator)operator {
    double num1 = [[self.stack pop] doubleValue];
    double num2 = [[self.stack pop] doubleValue];
    
    double result;
    
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
            
        default:
            break;
    }
    
    [self.stack push:[NSNumber numberWithDouble:result]];
}

- (void)clear {
    [self.stack initWithArray:@[]];
}

@end
