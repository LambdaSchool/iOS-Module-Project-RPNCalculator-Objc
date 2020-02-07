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

- (void)updateTextFieldWithValue:(double)value;

@end

@implementation JDKCalculatorViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _calculator = [[JDKCalculator alloc] init];
        _digitAccumulator = [[JDKDigitAccumulator alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self textField] setDelegate:self];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    NSNumber *number = [NSNumber numberWithInteger:sender.tag];
    [self.digitAccumulator addDigitWithNumericValue:number];
    [self updateTextFieldWithValue:[self.digitAccumulator value]];
}

- (IBAction)enterDecimal:(id)sender {
    [self.digitAccumulator addDecimalPoint];
}

- (IBAction)addNumberToStack:(id)sender {
    [self.calculator pushNumber:[self.digitAccumulator value]];
    [self.digitAccumulator clear];
}

- (IBAction)addResult:(id)sender {
    [self.calculator applyOperator:add];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (IBAction)subtractResult:(id)sender {
    [self.calculator applyOperator:subtract];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (IBAction)multiplyResult:(id)sender {
    [self.calculator applyOperator:multiply];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (IBAction)divideResult:(id)sender {
    [self.calculator applyOperator:divide];
    [self updateTextFieldWithValue:[self.calculator topValue]];
}

- (void)updateTextFieldWithValue:(double)value
{
    NSNumber *placeholderValue = [NSNumber numberWithDouble:value];
    self.textField.text = [self.numberFormatter stringFromNumber:placeholderValue];
}

- (NSNumberFormatter *)numberFormatter
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setAllowsFloats:YES];
    return formatter;
}


- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    [self.calculator clear];
    [self.digitAccumulator clear];
    
    return YES;
}

@end
