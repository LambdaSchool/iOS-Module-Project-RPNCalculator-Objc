//
//  JLRDigitAccumulator.m
//  RPNLogic
//
//  Created by Jesse Ruiz on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRDigitAccumulator.h"
#import "JLRStack.h"

@interface JLRDigitAccumulator ()

@property NSMutableString *digit;

@end

@implementation JLRDigitAccumulator

- (instancetype)init {
    self = [super init];
    if (self) {
        _digit = [[NSMutableString alloc] init];
    }
    return self;
}

- (void)addDigitWithNumericValue:(double)value {
    if (value >= 0 && value <= 9) {
        [self.digit appendFormat:@"%f", (value)];
    }
}


- (void)addDecimalPoint {
    
}


- (void)clear {
    self.digit = [NSMutableString stringWithString:@""];
}

- (double)value {
    return [self.digit doubleValue];
}

@end
