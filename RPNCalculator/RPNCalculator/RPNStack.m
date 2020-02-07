//
//  RPNStack.m
//  RPNCalculator
//
//  Created by Bobby Keffury on 2/6/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "RPNStack.h"

@interface RPNStack ()

@property (nonatomic, readonly, copy) NSMutableArray *values;

@end

@implementation RPNStack

//MARK: - Initializers

- (instancetype)initWith:(NSArray *)anArray
{
    return [self initWith:anArray];
}

//MARK: - Methods

- (void)push:(double *)dub
{
    
}

- (double)pop
{
    return 1.5;
}

- (double)peek
{
    return 1.5;
}

@end
