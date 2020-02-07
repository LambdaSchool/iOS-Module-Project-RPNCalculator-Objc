//
//  VVSStack.h
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VVSStack : NSObject

- (NSNumber *)peek;

- (NSNumber *)pop;

- (void)push:(NSNumber *)number;

@end

