//
//  ViewController1.m
//  tabbedtry
//
//  Created by Uno on 2016/3/16.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc]initWithFrame: CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor = [UIColor colorWithRed:0.850 green:0.959 blue:0.836 alpha:1.000];
    [self.view addSubview:view1];
    
    
    
    
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
