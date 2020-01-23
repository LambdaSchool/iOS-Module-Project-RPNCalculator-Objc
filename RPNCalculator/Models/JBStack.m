//
//  JBStack.m
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBStack.h"


@interface JBStack()

@property (nonatomic) NSMutableArray *stack;

@end


@implementation JBStack

- (instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        _stack = [array mutableCopy];
    }
    return self;
}

#pragma mark - Public API

- (void)push:(id)newElement
{
    [self.stack addObject:newElement];
}

- (id)pop
{
    id lastObject = self.stack.lastObject;
    [self.stack removeLastObject];
    return lastObject;
}

- (id)peek
{
    return self.stack.lastObject;
}

- (void)clear
{
    self.stack = [[NSMutableArray alloc] init];
}

@end
