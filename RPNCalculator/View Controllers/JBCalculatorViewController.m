//
//  JBCalculatorViewController.m
//  RPNCalculator
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBCalculatorViewController.h"
#import "JBCalculator.h"
#import "JBDigitAccumulator.h"


#pragma mark - Private Declarations

@interface JBCalculatorViewController () <UITextFieldDelegate> {
    NSNumberFormatter *_numberFormatter;
}

@property (weak, nonatomic) IBOutlet UITextField *mainTextField;

@property (nonatomic) JBCalculator *brain;
@property (nonatomic) JBDigitAccumulator *digitAccumulator;

@property (nonatomic, readonly) NSNumberFormatter *numberFormatter;

- (IBAction)enterNumericDigit:(UIButton *)sender;
- (IBAction)enterDecimal:(UIButton *)sender;
- (IBAction)pushNumberToStack:(UIButton *)sender;
- (IBAction)calculateWithOperator:(UIButton *)sender;

- (void)setDisplayTextFromBrain:(BOOL)willSetFromBrainNotAccumulator;

@end


@implementation JBCalculatorViewController

#pragma mark - Init/Setup

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        _brain = [[JBCalculator alloc] init];
        _digitAccumulator = [[JBDigitAccumulator alloc] init];

        self.mainTextField.delegate = self;
    }
    return self;
}

-(NSNumberFormatter *)numberFormatter
{
    if (_numberFormatter == nil)
    {
        _numberFormatter = [[NSNumberFormatter alloc] init];
        _numberFormatter.allowsFloats = true;
        _numberFormatter.minimumFractionDigits = 0;
        _numberFormatter.maximumIntegerDigits = 20;
    }
    return _numberFormatter;
}

# pragma mark - Actions

- (IBAction)enterNumericDigit:(UIButton *)sender
{
    [self.digitAccumulator addDigitWithNumericValue:sender.tag];
    [self setDisplayTextFromBrain:NO];
}

- (IBAction)enterDecimal:(UIButton *)sender
{
    [self.digitAccumulator addDecimalPoint];
    [self setDisplayTextFromBrain:NO];
}

- (IBAction)pushNumberToStack:(UIButton *)sender
{
    double value = self.digitAccumulator.value;
    if (value) {
        [self.brain pushNumber:value];
        [self.digitAccumulator clear];
        [self setDisplayTextFromBrain:NO];
    }
}

- (IBAction)calculateWithOperator:(UIButton *)sender
{
    [self.brain applyOperator:(JBOperator)sender.tag];
    [self setDisplayTextFromBrain:YES];
}

- (void)setDisplayTextFromBrain:(BOOL)willSetFromBrainNotAccumulator
{
    double valueToSet = willSetFromBrainNotAccumulator ? self.brain.topValue : self.digitAccumulator.value;
    self.mainTextField.text = [self.numberFormatter stringFromNumber:[NSNumber numberWithDouble:valueToSet]];
}

# pragma mark - Text Field Delegate

- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    [self.brain clear];
    [self.digitAccumulator clear];

    return true;
}

@end
