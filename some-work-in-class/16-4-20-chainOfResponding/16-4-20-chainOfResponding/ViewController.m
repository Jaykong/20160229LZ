//
//  ViewController.m
//  16-4-20-chainOfResponding
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "Cat.h"
#import "Wolf.h"
#import "Mouse.h"
#import "Sheep.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Wolf *wolf = [[Wolf alloc] init];
    Cat *cat = [[Cat alloc] init];
    cat.animal= wolf;
    Sheep *sheep = [[Sheep alloc] init];
    [cat catchAnimal:sheep];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
