//
//  VVSRPNCalculatorViewController.m
//  RPN Calculator
//
//  Created by Vici Shaweddy on 2/6/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSRPNCalculatorViewController.h"
#import "VVSDigitalAccumulator.h"
#import "VVSCalculator.h"

@interface VVSRPNCalculatorViewController ()

@property (weak, nonatomic) IBOutlet UITextField *digitTextField;
@property (strong, nonatomic) VVSDigitalAccumulator *accumulator;
@property (strong, nonatomic) VVSCalculator *calculator;

@end

@implementation VVSRPNCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.accumulator = [[VVSDigitalAccumulator alloc] init];
    self.calculator = [[VVSCalculator alloc] init];
}

- (IBAction)numberButtonTapped:(UIButton *)sender {
    NSString *string = self.digitTextField.text;
    self.digitTextField.text = [NSString stringWithFormat:@"%@%li", string, sender.tag];
    [self.accumulator addDigitWithNumericValue:(int)sender.tag];
}

- (IBAction)decimalButtonTapped:(id)sender {
    NSString *string = self.digitTextField.text;
    self.digitTextField.text = [NSString stringWithFormat:@"%@.", string];
    [self.accumulator addDecimalPoint];
}

- (IBAction)returnButtonTapped:(id)sender {
    double number = [self.accumulator value];
    [self.calculator pushNumber:number];
    self.digitTextField.text = @"";
    [self.accumulator clear];
}

- (IBAction)plusButtonTapped:(id)sender {
    [self.calculator applyOperator:Addition];
    [self updateResult];
}

- (IBAction)minusButtonTapped:(id)sender {
    [self.calculator applyOperator:Substraction];
    [self updateResult];
}

- (IBAction)multiplyButtonTapped:(id)sender {
    [self.calculator applyOperator:Multiply];
    [self updateResult];
}

- (IBAction)divideButtonTapped:(id)sender {
    [self.calculator applyOperator:Division];
    [self updateResult];
}

- (void)updateResult
{
    self.digitTextField.text = [NSString stringWithFormat:@"%f", self.calculator.topValue];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
