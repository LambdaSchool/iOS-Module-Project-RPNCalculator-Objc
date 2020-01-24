//
//  SKSDigitAccumulator.m
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDigitAccumulator.h"

@interface SKSDigitAccumulator()

@property (nonatomic)NSMutableArray *digits;

@end

@implementation SKSDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _digits = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDigitWithNumericValue:(NSNumber *)digit {
    double *ptr = &_value;
    [self.digits addObject:digit];
    NSLog(@"Digits: %f", [[self.digits componentsJoinedByString:@""] doubleValue]);
    *ptr = [[self.digits componentsJoinedByString:@""] doubleValue];
    //number
}

- (void)addDecimalPoint {
    [self.digits addObject:@"."];
}

- (void)clear {
    [self.digits removeAllObjects];
}

@end
