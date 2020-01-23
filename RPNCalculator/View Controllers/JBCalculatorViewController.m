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


@interface JBCalculatorViewController () {
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


@end


@implementation JBCalculatorViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        _brain = [[JBCalculator alloc] init];
        _digitAccumulator = [[JBDigitAccumulator alloc] init];
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

- (IBAction)enterNumericDigit:(UIButton *)sender {
}

- (IBAction)enterDecimal:(UIButton *)sender {
}

- (IBAction)pushNumberToStack:(UIButton *)sender {
}

- (IBAction)calculateWithOperator:(UIButton *)sender {
}

@end
