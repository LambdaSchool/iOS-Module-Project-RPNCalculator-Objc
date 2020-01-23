//
//  SKSDigitAccumulator.h
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKSDigitAccumulator : NSObject

@property (readonly) double value;

- (void)addDigitWithNumericValue:(double)digit;
- (void)addDecimalPoint;
- (void)clear;

@end

