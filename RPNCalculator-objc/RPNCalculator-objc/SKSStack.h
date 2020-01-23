//
//  SKSStack.h
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKSStack : NSObject

- (instancetype)initWith:(NSArray *)array;

- (void)push:(NSNumber *)number;
- (void)pop;
- (NSNumber *)peek;

@end

