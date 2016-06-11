//
//  FirstViewController.m
//  ncpassvalue
//
//  Created by Uno on 2016/4/1.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewWillAppear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(colorChanged:) name:@"Test1" object:nil];
}

-(void) colorChanged: (NSNotification *) not {
    self.view.backgroundColor = not.userInfo[@"blueColor"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    // Dispose of any resources that can be recreated.
}

@end
