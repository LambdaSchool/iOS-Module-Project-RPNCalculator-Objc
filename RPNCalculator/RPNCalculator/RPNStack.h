//
//  RPNStack.h
//  RPNCalculator
//
//  Created by Bobby Keffury on 2/6/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RPNStack : NSObject

//MARK: - Initializers
- (instancetype)initWith:(NSArray *)anArray;

//MARK: - Methods

- (void)push:(double *)dub;
- (double)pop;
- (double)peek;

@end

NS_ASSUME_NONNULL_END
