//
//  LSIStack.h
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIStack : NSObject

- (instancetype) initWith:(NSArray *)array;

- (void)push:(NSNumber *)number;
- (NSNumber *)pop;
- (NSNumber *)peek;

@end
