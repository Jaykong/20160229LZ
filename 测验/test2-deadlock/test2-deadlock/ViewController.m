//
//  ViewController.m
//  test2-deadlock
//
//  Created by Uno on 2016/6/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"会运行");
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"死锁");
    });
    NSLog(@"不会运行");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
