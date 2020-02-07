//
//  JDKCalculatorViewController.m
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKCalculatorViewController.h"

@interface JDKCalculatorViewController ()

@end

@implementation JDKCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self textField] setDelegate:self];
}

@end
