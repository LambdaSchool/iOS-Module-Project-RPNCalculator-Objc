//
//  JBDigitAccumulator.m
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDigitAccumulator.h"


@interface JBDigitAccumulator ()

@property (nonatomic) NSMutableString *stringValue;

@end


@implementation JBDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self clear];
    }
    return self;
}

- (void)addDigitWithNumericValue:(double)value
{
    [self.stringValue appendFormat:@"%f", value];
}

- (void)addDecimalPoint
{
    if ([self.stringValue containsString:@"."])
    {
        return;
    }
    else
    {
        [self.stringValue appendString:@"."];
    }
}

- (void)clear
{
    self.stringValue = [@"" mutableCopy];
}

- (double)value
{
    return [self.stringValue doubleValue];
}

@end
