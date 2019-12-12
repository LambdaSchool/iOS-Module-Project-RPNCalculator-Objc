//
//  JLRStack.m
//  RPNLogic
//
//  Created by Jesse Ruiz on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRStack.h"

@interface JLRStack()

@property (nonatomic, strong) NSMutableArray<id> *values;

@end

@implementation JLRStack

- (instancetype)init {
    return [self initWithArray:@[]];
}

- (instancetype)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        _values = [array mutableCopy];
    }
    return self;
}

- (void)push:(double)value {
    [self.values addObject:@(value)];
}


- (double)pop {
    if ([self.values count] < 1) { return 0;}
    double result = [[self.values lastObject] doubleValue];
    [self.values removeLastObject];
    return result;
}


- (double)peek {
    return [[self.values lastObject] doubleValue];
}


@end
