//
//  ViewController.m
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "Character.h"
#import "Director.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Character *enemyChar = [Director enemy];
    NSLog(@"坏人power和defence是%.2f和%.2f",enemyChar.power, enemyChar.defence);
    Character *playerChar = [Director player];
    NSLog(@"我power和defence是%.2f和%.2f",playerChar.power, playerChar.defence);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
