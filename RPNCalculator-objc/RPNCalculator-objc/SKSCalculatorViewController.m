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

- (void)updateTextFieldWithValue:(double)value;

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
    [self updateTextFieldWithValue:[self.digitAccumulator value]];
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
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (IBAction)subtractAccumulatedResults:(id)sender {
    [self.calculator applyOperator:subtract];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (IBAction)multiplyAccumulatedResults:(id)sender {
    [self.calculator applyOperator:multiply];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (IBAction)divideAccumulatedResults:(id)sender {
    [self.calculator applyOperator:divide];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (void)updateTextFieldWithValue:(double)value {
    NSNumber *tempValue = [NSNumber numberWithDouble:value];
    self.textField.text = [self.numberFormatter stringFromNumber:tempValue];
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
