//
//  LSIDigitAccumulator.h
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIDigitAccumulator : NSObject

@property (readonly) double value;

- (void)addDigitWithNumericValue:(int)value;
- (void)addDecimalPoint;
- (void)clear;

@end
