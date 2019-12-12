//
//  GIPDigitAccumulator.m
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPDigitAccumulator.h"

@interface GIPDigitAccumulator()

@property NSMutableString *valueString;

@end

@implementation GIPDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _valueString = [[NSMutableString alloc] init];
    }
    return self;
}

- (double)value {
    return [self.valueString doubleValue];
}

- (void) addDigitWithNumericValue:(int)number {
    [self.valueString appendFormat:@"%d", (number)];
}

- (void) addDecimalPoint {
    if (![self.valueString containsString:@"."]) {
        [self.valueString appendString:@"."];
    }
}

- (void) clear {
    self.valueString = [NSMutableString stringWithString:@""];
}



@end
