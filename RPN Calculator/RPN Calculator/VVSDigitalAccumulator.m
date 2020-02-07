//
//  VVSDigitalAccumulator.m
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSDigitalAccumulator.h"

@interface VVSDigitalAccumulator ()

@property (nonatomic)NSMutableArray *digits;

@end

@implementation VVSDigitalAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _digits = [[NSMutableArray alloc] init];
    }
    return self;
}

- (double)value
{
    return [[self.digits componentsJoinedByString:@""] doubleValue];
}

- (void)addDigitWithNumericValue:(int)digit
{
    [self.digits addObject:[[NSNumber numberWithInt:digit] stringValue]];
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
