//
//  main.m
//  16-3-16
//
//  Created by Uno on 2016/3/16.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "test.h"
#define SQU(x) x * x
#define SQU2(x) (x) * (x)
//int gvar = 55555;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSInteger five = 5;
////      five = SQU(five);
//        NSInteger three = 3;
////      NSInteger fiveminusthree = five - three;
//        NSLog(@"%li",SQU(five - three));//5-3*5-3
//        NSLog(@"%li",SQU2(five - three));
        test *a = [[test alloc]init];
        [a a];
        
    }
    return 0;
}
