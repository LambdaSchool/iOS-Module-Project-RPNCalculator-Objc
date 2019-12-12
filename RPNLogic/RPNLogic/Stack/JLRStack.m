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

- (instancetype)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        _values = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)push:(id)value {
    [self.values addObject:value];
}


- (void)pop:(id)value {
    [self.values removeLastObject];
}


- (void)peek:(id)value {
    [self.values lastObject];
}


@end
