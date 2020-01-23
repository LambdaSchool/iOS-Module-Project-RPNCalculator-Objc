//
//  DPRStack.h
//  Calculator
//
//  Created by Dennis Rudolph on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPRStack : NSObject

- (void)push:(double)number;
- (double)pop;
- (double)peek;

- (instancetype) initWith:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
