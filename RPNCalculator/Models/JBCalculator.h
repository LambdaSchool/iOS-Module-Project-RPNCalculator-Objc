//
//  JBCalculator.h
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, JBOperator) {
    jbAdd = 0,
    jbSubtract = 1,
    jbMultiply = 2,
    jbDivide = 3
};


@interface JBCalculator : NSObject

@property (nonatomic, readonly) double topValue;

- (instancetype)init;

- (void)pushNumber:(double)value;
- (void)applyOperator:(JBOperator)operator;
- (void)clear;

@end
