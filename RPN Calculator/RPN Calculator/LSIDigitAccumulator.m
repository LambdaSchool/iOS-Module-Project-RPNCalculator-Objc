//
//  LSIDigitAccumulator.m
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDigitAccumulator.h"

@interface LSIDigitAccumulator()

@property NSMutableArray *number;

@end

@implementation LSIDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _number = [[NSMutableArray alloc] init];
    }
    return self;
}

- (double)value {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    return [[formatter numberFromString:[self valueString]] doubleValue];
}

- (NSString *)valueString {
    NSString *string = [[NSString alloc] init];
    
    for (NSNumber *num in self.number) {
        int digit = [num intValue];
        if (digit == 10) {
            string = [string stringByAppendingString:@"."];
        } else {
            string = [string stringByAppendingFormat:@"%d", digit];
        }
    }
    
    return string;
}

- (void)addDigitWithNumericValue:(int)value {
    if (value >= 0 && value < 10) {
        [self.number addObject:[NSNumber numberWithInt:value]];
    }
}

- (void)addDecimalPoint {
    bool alreadyHasDecimalPoint = false;
    for (NSNumber *num in self.number) {
        if ([num integerValue] == 10) {
            alreadyHasDecimalPoint = true;
            break;
        }
    }
    
    if (!alreadyHasDecimalPoint) {
        [self.number addObject:[NSNumber numberWithInt:10]];
    }
}

- (void)clear {
    [self.number removeAllObjects];
}

@end
