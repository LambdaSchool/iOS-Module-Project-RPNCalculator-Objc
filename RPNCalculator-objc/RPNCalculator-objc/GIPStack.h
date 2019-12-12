//
//  GIPStack.h
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GIPStack : NSObject

- (instancetype)initWithArray:(NSArray *)array;

- (void) push:(NSNumber *)number;
- (NSNumber *)pop;
- (NSNumber *)peek;

@end

NS_ASSUME_NONNULL_END
