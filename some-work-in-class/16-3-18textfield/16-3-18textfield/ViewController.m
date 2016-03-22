//
//  ViewController.m
//  16-3-18textfield
//
//  Created by Uno on 2016/3/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"

@interface ViewController ()
@property NSMutableString *inpuText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Text Field Delegate
-(void)textFieldDidEndEditing:(UITextField *)textField {
    _inpuText = [NSMutableString stringWithString:textField.text];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PushViewController *controller = segue.destinationViewController;
    controller.passText = _inpuText;
}
@end
