//
//  JDKDigitAccumulator.h
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDKDigitAccumulator : NSObject

@property (readonly) double value;

- (void)addDigitWithNumericValue:(NSNumber *)digit;
- (void)addDecimalPoint;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
