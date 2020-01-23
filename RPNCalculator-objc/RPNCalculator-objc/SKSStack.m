//
//  SKSStack.m
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSStack.h"

@interface SKSStack() {
}

@property (nonatomic, copy) NSMutableArray *values;

@end

@implementation SKSStack

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

- (void)pop {
    [self.values removeLastObject];
}

- (NSNumber *)peek {
    return [self.values lastObject];
}

@end
