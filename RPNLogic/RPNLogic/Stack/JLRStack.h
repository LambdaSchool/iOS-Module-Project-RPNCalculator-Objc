//
//  JLRStack.h
//  RPNLogic
//
//  Created by Jesse Ruiz on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLRStack<ObjectType> : NSObject

- (instancetype)initWithArray:(NSArray *)array;

- (void)push:(ObjectType)value;
- (void)pop:(ObjectType)value;
- (void)peek:(ObjectType)value;

@end

NS_ASSUME_NONNULL_END
