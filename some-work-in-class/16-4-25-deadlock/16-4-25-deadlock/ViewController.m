//
//  ViewController.m
//  16-4-25-deadlock
//
//  Created by Uno on 2016/4/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //同步会阻塞当前线程
    dispatch_queue_t mainqueue = dispatch_get_main_queue();//串行队列
    dispatch_sync(mainqueue, ^{NSLog(@"hello");});
    dispatch_queue_t queue2 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue2, ^{
        for (int i = 0; i < 100; ++i) {
            NSLog(@"i: %i",i);
        }
        dispatch_sync(mainqueue, ^{
            NSLog(@"ui update");
        });//queue2是并发, 并不意味着同时进行
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
