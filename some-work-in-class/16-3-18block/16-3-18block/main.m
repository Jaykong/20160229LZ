//
//  main.m
//  16-3-18block
//
//  Created by Uno on 2016/3/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^BLOCK) (void);   //声明一个块 = void (^blocktest) ();



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        BLOCK blocktest;
        
        blocktest= ^() {            //定义这个块
            NSLog(@"hello");
        };
        blocktest();                //调取这个块
    }
    return 0;
}
