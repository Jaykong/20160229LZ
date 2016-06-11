//
//  SecondViewController.m
//  ncpassvalue
//
//  Created by Uno on 2016/4/1.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewWillAppear:(BOOL)animated {
    UIColor *color1 = [UIColor colorWithRed:0.481 green:0.856 blue:1.000 alpha:1.000];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Test1" object:nil userInfo:@{@"blueColor":color1}];
    UIColor *color2 = [UIColor colorWithRed:1.000 green:0.495 blue:0.538 alpha:1.000];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Test2" object:nil userInfo:@{@"pinkColor":color2}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
