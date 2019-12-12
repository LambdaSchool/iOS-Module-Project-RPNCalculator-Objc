//
//  GIPCalculator.h
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GIPCalculator : NSObject

typedef NS_ENUM(NSUInteger, Operator) {
    add,
    subtract,
    multiply,
    divide
};

@property (nonatomic, copy) NSNumber *topValue;

- (void)pushNumber:(double)value;
- (void)applyOperator:(Operator)operator;
- (void)clear;


@end

