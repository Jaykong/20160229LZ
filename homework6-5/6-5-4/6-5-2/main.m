//
//  main.m
//  6-5-4
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Begin calculations, input a number and S to begin.");
        Calculator *calc = [[Calculator alloc]init];
        double calNum = 0,zoidberg = 0,getNum;
        char operator;
        scanf("%lf %c",&calNum,&operator);
        if (operator == 'S' || operator == 's') {
            NSLog(@"Let's start with number %lf.",calNum);
            [calc setAccumulator:calNum];
            while (zoidberg == 0) {
                scanf("%lf %c",&getNum,&operator);
                if (operator == '+') {
                    [calc add: getNum];
                    [calc print];
                }
                else if (operator == '-') {
                    [calc minus: getNum];
                    [calc print];
                }
                else if (operator == '*' || operator == 'x') {
                    [calc multiply: getNum];
                    [calc print];
                }
                else if (operator == '/') {
                    if ( getNum == 0) {
                        NSLog(@"Nooooooooo!!!! Please dont divide a number by ZERO!!!!!");
                    }
                    else {
                        [calc divide: getNum];
                        [calc print];
                    }
                }
                else if (operator == 'E'||operator == 'e') {
                    NSLog(@"End of calculations.");
                    zoidberg = 1;
                }
                else {
                    NSLog(@"你打的什么劳什子玩意?重新来!");
                }
            }
        }
        else {
            NSLog(@"输入错误, 程序终止.");
        }
    }
    return 0;
}
