//
//  ViewController.m
//  Tip Calculator
//
//  Created by Stefan Verveniotis on 2016-11-11.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateTip:(UIButton *)sender {
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f", ([self.billAmountTextField.text floatValue] * [self.tipPercentage.text floatValue] / 100.00)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
