//
//  ViewController.m
//  16-4-20-abstractFactory
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "AbstractFactory.h"
#import "BMWAbstractFactory.h"
#import "BenzAbstractFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AbstractFactory *factory = [AbstracFactory factory];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
