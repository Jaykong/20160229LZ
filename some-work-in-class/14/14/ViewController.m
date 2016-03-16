//
//  ViewController.m
//  14
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
    CGPoint point             = CGPointMake(10, 10); //坐标系里的一个点
    CGSize size               = CGSizeMake(200, 200);//视图的宽高
    CGRect rec                = CGRectMake(10, 10, 200, 200);//矩形框 包含一个原点和宽高 frame == CGRect, bounds == CGRect
    CGRect rec2               = CGRectMake(20, 20, 100, 100);

    self.view.backgroundColor = [UIColor colorWithRed:0.622 green:0.926 blue:0.629 alpha:1.000];
    UIView *subview           = [[UIView alloc]initWithFrame:rec];
    subview.backgroundColor   = [UIColor colorWithRed:0.941 green:0.967 blue:0.850 alpha:1.000];
   // [self.view addSubview:subview];可以响应用户操作
    [self.view.layer addSublayer:subview.layer];//不能响应用户操作
    UIView *subview2          = [[UIView alloc]initWithFrame:rec2];
    subview2.backgroundColor  = [UIColor colorWithRed:0.371 green:0.332 blue:0.887 alpha:1.000];
    [self.view.layer addSublayer:subview2.layer];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
