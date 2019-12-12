//
//  LSICalculatorViewController.m
//  RPN Calculator
//
//  Created by Isaac Lyons on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSICalculatorViewController.h"
#import "LSIDigitAccumulator.h"
#import "LSICalculator.h"

@interface LSICalculatorViewController ()

@property LSIDigitAccumulator *digitAccumulator;
@property LSICalculator *calculator;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation LSICalculatorViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _digitAccumulator = [[LSIDigitAccumulator alloc] init];
        _calculator = [[LSICalculator alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)showAccumulatorValue{
    [self.textField setText:[self.digitAccumulator valueString]];
}

- (void)showCalculatorTopValue {
    [self.textField setText:[NSString stringWithFormat:@"%f", [self.calculator topValue]]];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    [self.digitAccumulator addDigitWithNumericValue:(int)[sender tag]];
    
    [self showAccumulatorValue];
}

- (IBAction)enterDecimalPoint:(UIButton *)sender {
    [self.digitAccumulator addDecimalPoint];
    
    [self showAccumulatorValue];
}

- (IBAction)enterNumber:(UIButton *)sender {
    
    [self.calculator pushNumber:[self.digitAccumulator value]];
    [self.digitAccumulator clear];
    
    [self showAccumulatorValue];
}

- (IBAction)performOperation:(UIButton *)sender {
    // If the user entered a new number, use that number. If not, use the result of the previous operation
    if (self.digitAccumulator.value) {
        [self.calculator pushNumber:[self.digitAccumulator value]];
    }
    [self.digitAccumulator clear];
    
    // Because the rawValue type of the operation is a form of integer, we can just pass in the tag of the operator
    [self.calculator applyOperator:sender.tag];
    
    [self showCalculatorTopValue];
}

@end
