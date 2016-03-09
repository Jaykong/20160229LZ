//
//  firstviewcontrollerViewController.m
//  luozhansappp
//
//  Created by Uno on 16/3/9.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "firstviewcontrollerViewController.h"

@interface firstviewcontrollerViewController () {
    NSArray *questions;
    NSArray *answers;
    NSInteger current;
}

@end

@implementation firstviewcontrollerViewController
- (IBAction)nextQuestion:(id)sender {
    ++current;

    if (current == 3) {
        current = 0;
    }
    _questionsLabel.text = questions[current];
}
- (IBAction)showAnswer:(id)sender {
    _answerLabel.text = answers[current];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    questions = @[@"1x1=",@"1+1=",@"1/0="];
    answers = @[@"1",@"2",@"ERROR"];
    current = 0;
    _questionsLabel.text = questions[current];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
