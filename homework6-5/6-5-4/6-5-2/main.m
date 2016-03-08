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
    while (0) {
        double value2;
        char operator;
        Calculator *calc = [[Calculator alloc]init];
        NSLog(@"Begin calculations");
        scanf("%lf %c",&value2,&operator);
        

        if (operator == 'S') {
            [calc setAccumulator:value2];
            continue;
            }
        if (operator == '+') {
            [calc add: value2];
            [calc print];
            continue;
        }
        else if (operator == '-') {
            [calc minus: value2];
            [calc print];
            continue;
        }
        else if (operator == '*' || operator == 'x') {
            [calc multiply: value2];
            [calc print];
            continue;
        }
        else if (operator == '/') {
            if ( value2 == 0) {
                NSLog(@"你会不会算术? 0能不能被除??");
                break;
            }
            else {
                [calc divide: value2];
                [calc print];
                continue;
            }
        }
        else {
            NSLog(@"你打的什么劳什子玩意?");
            break;
        }

        }}
    return 0;
}
