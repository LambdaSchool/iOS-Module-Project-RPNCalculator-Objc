//
//  GIPCalculatorViewController.m
//  RPNCalculator-objc
//
//  Created by Gi Pyo Kim on 12/12/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPCalculatorViewController.h"

@interface GIPCalculatorViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)enterNumericDigit:(UIButton *)sender;
- (IBAction)enterDecimal:(UIButton *)sender;
- (IBAction)saveNumberToCalculator:(UIButton *)sender;

@end

@implementation GIPCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)add:(id)sender {
}

- (IBAction)subtract:(id)sender {
}

- (IBAction)multiply:(id)sender {
}

- (IBAction)divide:(id)sender {
}

- (IBAction)enterNumericDigit:(UIButton *)sender {
}

- (IBAction)enterDecimal:(UIButton *)sender {
}

- (IBAction)saveNumberToCalculator:(UIButton *)sender {
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
}
    
@end
