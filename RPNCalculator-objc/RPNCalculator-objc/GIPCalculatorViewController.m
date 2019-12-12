//
//  GIPCalculatorViewController.m
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPCalculatorViewController.h"
#import "GIPCalculator.h"
#import "GIPDigitAccumulator.h"


@interface GIPCalculatorViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)enterNumericDigit:(UIButton *)sender;
- (IBAction)enterDecimal:(UIButton *)sender;
- (IBAction)saveNumberToCalculator:(UIButton *)sender;

@property (nonatomic) GIPCalculator *calculator;
@property (nonatomic) GIPDigitAccumulator *digitAccumulator;

- (void)updateCalculator;
- (void)updateDigit;

@end

@implementation GIPCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.textField setDelegate:self];
    
    _calculator = [[GIPCalculator alloc] init];
    _digitAccumulator = [[GIPDigitAccumulator alloc] init];
}

- (void)updateCalculator {
    
    if ([self.calculator topValue] != NULL) {
        self.textField.text = [[self.calculator topValue] stringValue];
    } else {
        self.textField.text = @"";
    }
}

- (void)updateDigit {
    
    if ([self.digitAccumulator value]) {
        self.textField.text = [NSString stringWithFormat:@"%f", ([self.digitAccumulator value])];
    } else {
        self.textField.text = @"";
    }
}


- (IBAction)add:(id)sender {
    [self.calculator applyOperator:add];
    [self updateCalculator];
}

- (IBAction)subtract:(id)sender {
    [self.calculator applyOperator:subtract];
    [self updateCalculator];
}

- (IBAction)multiply:(id)sender {
    [self.calculator applyOperator:multiply];
    [self updateCalculator];
}

- (IBAction)divide:(id)sender {
    [self.calculator applyOperator:divide];
    [self updateCalculator];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    [self.digitAccumulator addDigitWithNumericValue:sender.tag];
    [self updateDigit];
}

- (IBAction)enterDecimal:(UIButton *)sender {
    [self.digitAccumulator addDecimalPoint];
    [self updateDigit];
}

- (IBAction)saveNumberToCalculator:(UIButton *)sender {
    [self.calculator pushNumber:[self.digitAccumulator value]];
    [self.digitAccumulator clear];
    [self updateCalculator];
    [self updateDigit];
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    [self.calculator clear];
    [self.digitAccumulator clear];
    return YES;
}
    
@end
