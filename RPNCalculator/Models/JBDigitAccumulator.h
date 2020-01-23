//
//  JBDigitAccumulator.h
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface JBDigitAccumulator : NSObject

@property (nonatomic, readonly) double value;

- (void)addDigitWithNumericValue:(NSUInteger)value;
- (void)addDecimalPoint;
- (void)clear;

@end
