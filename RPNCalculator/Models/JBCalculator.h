//
//  JBCalculator.h
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, JBOperator) {
    jbAdd,
    jbSubtract,
    jbMultiply,
    jbDivide
};


@interface JBCalculator : NSObject

- (void)pushNumber:(double)value;
- (void)applyOperator:(JBOperator)operator;
- (void)clear;

@end
