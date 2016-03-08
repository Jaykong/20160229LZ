//
//  main.m
//  6-5-2
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1,value2;
        char operator;
        Calculator *calc = [[Calculator alloc]init];
        NSLog(@"请输入一个加减乘除简单算术题(例1+1, 对就这么简单):");
        scanf("%lf %c %lf",&value1,&operator,&value2);
        
        [calc setAccumulator:value1];
        if (operator == '+') {
            [calc add: value2];
            [calc print];
        }
        else if (operator == '-') {
            [calc minus: value2];
            [calc print];
        }
        else if (operator == '*' || operator == 'x') {
            [calc multiply: value2];
            [calc print];
        }
        else if (operator == '/') {
            if ( value2 == 0) {
                NSLog(@"你会不会算术? 0能不能被除??");
            }
            else {
            [calc divide: value2];
            [calc print];
            }
        }
        else {
            NSLog(@"你打的什么劳什子玩意?");
        }
    }
    return 0;
}
