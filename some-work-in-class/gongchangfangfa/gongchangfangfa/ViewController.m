//
//  ViewController.m
//  gongchangfangfa
//
//  Created by Uno on 16/3/14.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    NSString *str = @"this is a string A";
    
    NSRange ros = [str rangeOfString:@"string A"];

    NSLog(@"%lu  %lu",ros.location,ros.length);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
