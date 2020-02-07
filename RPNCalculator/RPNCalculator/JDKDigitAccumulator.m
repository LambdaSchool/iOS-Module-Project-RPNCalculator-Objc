//
//  JDKDigitAccumulator.m
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKDigitAccumulator.h"

@interface JDKDigitAccumulator ()

@property (nonatomic)NSMutableArray *digits;

@end

@implementation JDKDigitAccumulator

- (instancetype)init
{
    if (self = [super init]) {
        _digits = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDigitWithNumericValue:(NSNumber *)digit
{
    double *combinedDigit = &_value;
    [self.digits addObject:digit];
    *combinedDigit = [[self.digits componentsJoinedByString:@""] doubleValue];
}

- (void)addDecimalPoint
{
    [self.digits addObject:@"."];
}

- (void)clear
{
    [self.digits removeAllObjects];
}

@end
