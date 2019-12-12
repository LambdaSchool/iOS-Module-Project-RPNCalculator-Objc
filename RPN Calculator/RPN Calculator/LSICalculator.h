//
//  LSICalculator.h
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSICalculator : NSObject

typedef NS_ENUM(char, operation) {add, subtract, multiply, divide};

@property (readonly) double topValue;

- (void)pushNumber:(double)value;
- (void)applyOperator:(operation)operator;
- (void)clear;

@end
