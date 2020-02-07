//
//  JDKStack.h
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDKStack : NSObject

- (instancetype)initWith:(NSArray *)array;

- (void)push:(NSNumber *)number;
- (NSNumber *)pop;
- (NSNumber *)peek;

@end

NS_ASSUME_NONNULL_END
