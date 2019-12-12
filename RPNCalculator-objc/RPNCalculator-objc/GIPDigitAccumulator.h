//
//  GIPDigitAccumulator.h
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GIPDigitAccumulator : NSObject

@property (readonly) double value;

- (void) addDigitWithNumericValue:(int)number;
- (void) addDecimalPoint;
- (void) clear;

@end

NS_ASSUME_NONNULL_END
