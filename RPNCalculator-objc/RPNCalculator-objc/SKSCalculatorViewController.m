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

@property (nonatomic) NSNumberFormatter *numberFormatter;

@end

@implementation SKSCalculatorViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _calculator = [[SKSCalculator alloc] init];
        _digitAccumulator = [[SKSDigitAccumulator alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self textField] setDelegate:self];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    NSNumber *num = [NSNumber numberWithInteger:sender.tag];
    [self.digitAccumulator addDigitWithNumericValue:num];
    NSNumber *value = [NSNumber numberWithDouble:[self.digitAccumulator value]];
    self.textField.text = [self.numberFormatter stringFromNumber:value];
}

- (IBAction)enterDecimal:(id)sender {
    [self.digitAccumulator addDecimalPoint];
}

- (IBAction)saveNumberToCalculator:(id)sender {
    NSLog(@"%f", [self.digitAccumulator value]);
    [self.calculator pushNumber:[self.digitAccumulator value]];
    [self.digitAccumulator clear];
}

- (IBAction)addAccumulatedResults:(id)sender {
    [self.calculator applyOperator:add];
    NSNumber *value = [NSNumber numberWithDouble:[self.calculator topValue]];
    self.textField.text = [self.numberFormatter stringFromNumber:value];
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

- (NSNumberFormatter *)numberFormatter {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setAllowsFloats:TRUE];
    [formatter setMaximumIntegerDigits:20];
    [formatter setMinimumFractionDigits:0];
    [formatter setMaximumFractionDigits:20];
    return formatter;
}

#pragma mark - UITextFieldDelegate


- (BOOL)textFieldShouldClear:(UITextField *)textField {
    [self.calculator clear];
    [self.digitAccumulator clear];
    return true;
}

@end
