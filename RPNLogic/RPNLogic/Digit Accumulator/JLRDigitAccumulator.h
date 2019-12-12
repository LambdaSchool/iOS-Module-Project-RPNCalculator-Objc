//
//  JLRDigitAccumulator.h
//  RPNLogic
//
//  Created by Jesse Ruiz on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLRDigitAccumulator : NSObject

@property (readonly) double *value;

- (void)addDigitWithNumericValue;
- (void)addDecimalPoint;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
