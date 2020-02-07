//
//  VVSStack.m
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSStack.h"

@interface VVSStack ()

@property (nonatomic, copy) NSMutableArray<NSNumber *> *values;

@end

@implementation VVSStack

- (instancetype)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        _values = [array mutableCopy];
    }
    return self;
}

- (NSNumber *)peek
{
    return _values.lastObject;
}

- (NSNumber *)pop
{
    NSNumber *obj = _values.lastObject;
    [_values removeLastObject];
    return obj;
}

- (void)push:(NSNumber *)number
{
    return [_values addObject:number];
}

@end
