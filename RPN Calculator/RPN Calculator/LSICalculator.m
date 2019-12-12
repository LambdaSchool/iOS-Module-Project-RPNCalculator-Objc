//
//  LSICalculator.m
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSICalculator.h"
#import "LSIStack.h"

@interface LSICalculator ()

@property LSIStack *stack;

@end

@implementation LSICalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[LSIStack alloc] initWith:@[]];
    }
    return self;
}

- (void)pushNumber:(double)value {
    [self.stack push:value];
}

- (void)applyOperator:(operation)operator {
    double num1 = [self.stack pop];
    double num2 = [self.stack pop];
    
    switch (operator) {
        case add:
            [self.stack push:(num1 + num2)];
            break;
            
        case subtract:
            [self.stack push:(num1 - num2)];
            break;
            
        case multiply:
            [self.stack push:(num1 * num2)];
            break;
            
        case divide:
            [self.stack push:(num1 / num2)];
            break;
    }
}

- (void)clear {
    [self.stack clear];
}

@end
