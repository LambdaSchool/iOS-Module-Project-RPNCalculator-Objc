//
//  JBStack.h
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface JBStack : NSObject

- (instancetype)initWithArray:(NSArray *)array;

- (void)push:(id)newElement;
- (id)pop;
- (id)peek;
- (void)clear;

@end
