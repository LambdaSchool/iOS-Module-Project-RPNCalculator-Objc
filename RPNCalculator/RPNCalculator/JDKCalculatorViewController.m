//
//  JDKCalculatorViewController.m
//  RPNCalculator
//
//  Created by John Kouris on 2/6/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKCalculatorViewController.h"
#import "JDKCalculator.h"
#import "JDKDigitAccumulator.h"

@interface JDKCalculatorViewController ()

@property (nonatomic) JDKCalculator *calculator;
@property (nonatomic) JDKDigitAccumulator *digitAccumulator;
@property (nonatomic) NSNumberFormatter *numberFormatter;

@end

@implementation JDKCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self textField] setDelegate:self];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    
}

- (IBAction)enterDecimal:(id)sender {
}

- (IBAction)addNumberToStack:(id)sender {
}

- (IBAction)addResult:(id)sender {
}

- (IBAction)subtractResult:(id)sender {
}

- (IBAction)multiplyResult:(id)sender {
}

- (IBAction)divideResult:(id)sender {
}


@end
