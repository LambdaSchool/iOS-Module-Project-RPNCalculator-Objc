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

- (void)clear {
    [self.values removeAllObjects];
}

@end
