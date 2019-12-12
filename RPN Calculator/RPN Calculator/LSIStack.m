//
//  LSIStack.m
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIStack.h"

@interface LSIStack ()

@property NSMutableArray *values;

@end

@implementation LSIStack

- (instancetype)initWith:(NSArray *)array {
    self = [super init];
    if (self) {
        _values = [array mutableCopy];
    }
    return self;
}

- (void)push:(NSNumber *)number {
    [self.values addObject:number];
}

- (NSNumber *)pop {
    NSNumber *value = [[self.values firstObject] copy];
    [self.values removeObjectAtIndex:0];
    return value;
}

- (NSNumber *)peek {
    return [[self.values firstObject] copy];
}

@end
