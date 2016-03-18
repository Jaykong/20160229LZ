//
//  ViewController.m
//  16-3-18-1scrollview
//
//  Created by Uno on 2016/3/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *irr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    //设置宽度为屏幕宽度
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    //设置高度为屏幕高度
    UIImageView *iv1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    iv1.image = [UIImage imageNamed:@"Image"];
    [_irr addSubview:iv1];
    
    UIImageView *iv2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, height, width, height)];
    iv2.image = [UIImage imageNamed:@"Image2"];
    [_irr addSubview:iv2];
    
    UIImageView *iv3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 2*height, width, height)];
    iv3.image = [UIImage imageNamed:@"Image3"];
    [_irr addSubview:iv3];
    _irr.contentSize = CGSizeMake(width, 3*height);
    //设置总高度为3*高度
    _irr.pagingEnabled = YES;
    //设置滑动效果
    _irr.directionalLockEnabled = YES;
    //设置左右滑动锁定
    _irr.bounces = NO;
    //没有反弹效果
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
