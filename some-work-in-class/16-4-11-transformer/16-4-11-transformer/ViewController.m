//
//  ViewController.m
//  16-4-11-transformer
//
//  Created by Uno on 2016/4/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "Decorater.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Decorater *d = [[Decorater alloc] initWithFrame:self.view.frame];
    d.Image = [UIImage imageNamed:@"FaceImage"];
    [self.view addSubview:d];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
