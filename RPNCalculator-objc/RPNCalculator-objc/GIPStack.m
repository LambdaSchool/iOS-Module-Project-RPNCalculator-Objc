//
//  GIPStack.m
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPStack.h"

@interface GIPStack()

@property NSMutableArray *values;

@end

@implementation GIPStack

- (instancetype)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        _values = [array mutableCopy];
    }
    return self;
}


- (void) push:(NSNumber *)number {
    [self.values addObject:number];
}

- (NSNumber *)pop {
    NSNumber *number = [self.values lastObject];
    [self.values removeLastObject];
    return number;
}

- (NSNumber *)peek {
    NSNumber *number = [self.values lastObject];
    return number;
}


@end
