//
//  VVSDigitalAccumulator.h
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VVSDigitalAccumulator : NSObject

@property (nonatomic, readonly) double value;

- (void)addDigitWithNumericValue:(int)digit;

- (void)addDecimalPoint;

- (void)clear;

@end

