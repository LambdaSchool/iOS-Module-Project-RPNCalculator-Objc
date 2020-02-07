//
//  VVSStack.m
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSStack.h"

@interface VVSStack ()

@property (nonatomic, copy) NSMutableArray<NSNumber *> *internalArray;

@end

@implementation VVSStack

- (NSNumber *)peek
{
    return _internalArray.lastObject;
}

- (NSNumber *)pop
{
    NSNumber *obj = _internalArray.lastObject;
    [_internalArray removeLastObject];
    return obj;
}

- (void)push:(NSNumber *)number
{
    return [_internalArray addObject:number];
}

@end
