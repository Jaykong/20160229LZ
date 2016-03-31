//
//  ViewController.m
//  16-3-30testframeworkdemo
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import <frameworktest/frameworktest.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Fraction *f = [[Fraction alloc]init];
    f.numerator = 3;
    f.denominator = 6;
    Fraction *f1 = [[Fraction alloc]init];
    f1.numerator = 1;
    f1.denominator = 6;
    f = [f substract:f1];
    NSLog(@"%i/%i",f.numerator,f.denominator);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
