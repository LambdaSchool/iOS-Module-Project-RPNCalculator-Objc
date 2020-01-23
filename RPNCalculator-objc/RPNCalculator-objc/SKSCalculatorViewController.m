//
//  SKSCalculatorViewController.m
//  RPNCalculator-objc
//
//  Created by Lambda_School_Loaner_204 on 1/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSCalculatorViewController.h"
#import "SKSCalculator.h"
#import "SKSDigitAccumulator.h"

@interface SKSCalculatorViewController ()

@property (nonatomic) SKSCalculator *calculator;
@property (nonatomic) SKSDigitAccumulator *digitAccumulator;

@end

@implementation SKSCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self textField] setDelegate:self];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    [self.digitAccumulator addDigitWithNumericValue:sender.tag];
}

- (IBAction)enterDecimal:(id)sender {
    [self.digitAccumulator addDecimalPoint];
}

- (IBAction)saveNumberToCalculator:(id)sender {
    [self.calculator pushNumber:[self.digitAccumulator value]];
    [self.digitAccumulator clear];
}

- (IBAction)addAccumulatedResults:(id)sender {
    [self.calculator applyOperator:add];
}

- (IBAction)subtractAccumulatedResults:(id)sender {
    [self.calculator applyOperator:subtract];
}

- (IBAction)multiplyAccumulatedResults:(id)sender {
    [self.calculator applyOperator:multiply];
}

- (IBAction)divideAccumulatedResults:(id)sender {
    [self.calculator applyOperator:divide];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    [self.calculator clear];
    [self.digitAccumulator clear];
    return true;
}

@end
