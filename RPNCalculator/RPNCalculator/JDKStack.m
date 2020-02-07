//
//  JDKStack.m
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKStack.h"

@interface JDKStack ()

@property (nonatomic, copy) NSMutableArray *values;

@end

@implementation JDKStack

- (instancetype)initWith:(NSArray *)array
{
    if (self = [super init]) {
        _values = [array mutableCopy];
    }
    return self;
}

- (void)push:(NSNumber *)number
{
    [self.values addObject:number];
}

- (NSNumber *)pop
{
    NSNumber *pop = [self peek];
    [self.values removeLastObject];
    return pop;
}

- (NSNumber *)peek
{
    return [self.values lastObject];
}

@end
