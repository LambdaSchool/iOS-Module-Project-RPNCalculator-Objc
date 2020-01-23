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

@interface JBCalculatorViewController () {
    NSNumberFormatter *_numberFormatter;
}

@property (weak, nonatomic) IBOutlet UITextField *mainTextField;

@property (nonatomic) JBCalculator *brain;
@property (nonatomic) JBDigitAccumulator *digitAccumulator;

@property (nonatomic, readonly) NSNumberFormatter *numberFormatter;

- (IBAction)numericDigitTapped:(UIButton *)sender;
- (IBAction)decimalPointTapped:(UIButton *)sender;
- (IBAction)returnTapped:(UIButton *)sender;
- (IBAction)operatorTapped:(UIButton *)sender;

- (void)addDigitToAccumulator:(NSUInteger)digit;
- (void)pushDisplayedValueToStack;
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
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setDisplayTextFromBrain:NO];
}

- (NSNumberFormatter *)numberFormatter
{
    if (_numberFormatter == nil)
    {
        _numberFormatter = [[NSNumberFormatter alloc] init];
        _numberFormatter.allowsFloats = true;
        _numberFormatter.minimumFractionDigits = 0;
        _numberFormatter.maximumSignificantDigits = 20;
        _numberFormatter.maximumFractionDigits = 20;
        _numberFormatter.maximumIntegerDigits = 20;
    }
    return _numberFormatter;
}

# pragma mark - Actions

- (IBAction)numericDigitTapped:(UIButton *)sender
{
    [self addDigitToAccumulator:sender.tag];
}

- (IBAction)decimalPointTapped:(UIButton *)sender
{
    [self addDecimalPointToStack];
}

- (IBAction)returnTapped:(UIButton *)sender
{
    [self pushDisplayedValueToStack];
}

- (IBAction)operatorTapped:(UIButton *)sender
{
    [self calculateWithOperator:(JBOperator)sender.tag];
}

- (IBAction)clearButtonTapped:(id)sender
{
    [self clearAll];
}

# pragma mark - Private

- (void)addDigitToAccumulator:(NSUInteger)digit
{
    [self.digitAccumulator addDigitWithNumericValue:digit];
    [self setDisplayTextFromBrain:NO];
}

- (void)addDecimalPointToStack
{
    [self.digitAccumulator addDecimalPoint];
    [self setDisplayTextFromBrain:NO];
}

- (void)pushDisplayedValueToStack
{
    if (self.digitAccumulator.value)
    {
        [self.brain pushNumber:self.digitAccumulator.value];
        [self.digitAccumulator clear];
        [self setDisplayTextFromBrain:NO];
    }
}

- (void)calculateWithOperator:(JBOperator)operator
{
    [self pushDisplayedValueToStack];
    [self.brain applyOperator:operator];
    [self setDisplayTextFromBrain:YES];
}

- (void)setDisplayTextFromBrain:(BOOL)willSetFromBrainNotAccumulator
{
    double valueToSet = willSetFromBrainNotAccumulator ? self.brain.topValue : self.digitAccumulator.value;
    self.mainTextField.text = [self.numberFormatter stringFromNumber:[NSNumber numberWithDouble:valueToSet]];
}

- (void)clearAll
{
    [self.brain clear];
    [self.digitAccumulator clear];
    [self setDisplayTextFromBrain:NO];
}

@end
