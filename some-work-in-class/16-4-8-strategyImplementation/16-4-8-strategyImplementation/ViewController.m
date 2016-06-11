//
//  ViewController.m
//  16-4-8-strategyImplementation
//
//  Created by Uno on 2016/4/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "customtextfield.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

-(void)textFieldDidEndEditing:(UITextField *)textField {
    customtextfield *ctf = (customtextfield *)textField;
    [ctf validate];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
