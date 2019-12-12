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
    
    [self.digitAccumulator addDigitWithNumericValue:3];
    [self.digitAccumulator addDecimalPoint];
    [self.digitAccumulator addDigitWithNumericValue:1];
    [self.digitAccumulator addDigitWithNumericValue:4];
    
    printf("Number: %f", [self.digitAccumulator value]);
    
    [self updateViews];
}

- (void)updateViews{
    [self.textField setText:[self.digitAccumulator valueString]];
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
    [self.digitAccumulator addDigitWithNumericValue:(int)[sender tag]];
    [self updateViews];
}

@end
