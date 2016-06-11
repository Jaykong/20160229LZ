//
//  ViewController.m
//  16-4-16-chengxu
//
//  Created by Uno on 2016/4/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "Paperinfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Paperinfo insertIntoDataBaseWithName:@"2016" paperID:@"2016-001" type:@"真题" total:10 andTime:[NSDate date]];
    [Paperinfo insertIntoDataBaseWithName:@"2015" paperID:@"2015-001" type:@"真题" total:10 andTime:[NSDate date]];
    [Paperinfo insertIntoDataBaseWithName:@"2014" paperID:@"2014-001" type:@"真题" total:10 andTime:[NSDate date]];
    
    NSArray *papers = [Paperinfo findPaper];
    NSLog(@"%@",papers);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
