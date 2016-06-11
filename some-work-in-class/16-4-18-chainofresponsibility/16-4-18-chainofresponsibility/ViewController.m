//
//  ViewController.m
//  16-4-18-chainofresponsibility
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "MagicAttack.h"
#import "LightningAttack.h"
#import "SwordAttack.h"
#import "Avatar.h"
#import "HandleMagic.h"
#import "HandleSword.h"
#import "HandleLightning.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Avatar *ava = [[Avatar alloc] init];
    HandleMagic *handleM = [[HandleMagic alloc] init];
    handleM.nextResponder = ava;
    HandleSword *handleS = [[HandleSword alloc] init];
    handleS.nextResponder = handleM;
    MagicAttack *ma = [[MagicAttack alloc] init];
    [handleS handleAttack:ma];
    LightningAttack *la = [[LightningAttack alloc] init];
    [handleS handleAttack:la];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
