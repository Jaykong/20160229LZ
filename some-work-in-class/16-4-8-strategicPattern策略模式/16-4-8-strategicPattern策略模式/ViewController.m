//
//  ViewController.m
//  16-4-8-strategicPattern策略模式
//
//  Created by Uno on 2016/4/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UITextField *normalTextField;

@end

@implementation ViewController

-(void) textFieldDidEndEditing:(UITextField *)textField {
    if (textField == _numberTextField) {
        
    }
    if (textField == _normalTextField) {
        
    }
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
