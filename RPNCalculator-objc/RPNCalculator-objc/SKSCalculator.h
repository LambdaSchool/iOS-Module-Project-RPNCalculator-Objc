//
//  SKSCalculator.h
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Operator) {
    add,
    subtract,
    multiply,
    divide
};

@interface SKSCalculator : NSObject

@property (nonatomic, readonly) double topValue;

- (void)pushNumber:(double)value;
- (void)applyOperator:(Operator)operator;
- (void)clear;

@end

