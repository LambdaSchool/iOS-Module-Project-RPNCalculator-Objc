//
//  VVSCalculator.h
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VVSCalculator : NSObject

typedef NS_ENUM(NSInteger, Operator) {
    Addition,
    Substraction,
    Multiply,
    Division
};

@property (nonatomic, readonly) double topValue;

- (void)pushNumber:(double)value;

- (void)applyOperator:(Operator)operator;

- (void)clear;

@end

