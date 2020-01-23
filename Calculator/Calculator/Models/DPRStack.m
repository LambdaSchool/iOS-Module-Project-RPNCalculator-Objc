//
//  DPRStack.m
//  Calculator
//
//  Created by Dennis Rudolph on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DPRStack.h"

@interface DPRStack ()

@property NSMutableArray *values;

@end

@implementation DPRStack

- (instancetype)initWith:(NSArray *)array {
    self = [super init];
    if (self) {
        _values = [array mutableCopy];
    }
    return self;
}

- (void)push:(double)number {
    [self.values addObject:[NSNumber numberWithDouble:number]];
}

- (double)pop {
    NSNumber *value = [self.values firstObject];
    [self.values removeObjectAtIndex:0];
    return [value doubleValue];
}

- (double)peek {
    return [[self.values firstObject] doubleValue];
}

@end
