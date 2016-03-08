//
//  main.m
//  6-5-5
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number,right_digit;
        NSLog(@"input a number.");
        scanf(" %i",&number);
        int i = 0;
        if(number < 0){
            number = -number;
            i = 1;
        }
        do{
            right_digit = number % 10;
            NSLog(@"%i",right_digit);
            number /= 10;
        }
        while(number != 0);
        if(i == 1){
            NSLog(@"-");
        }
    }
    return 0;
}
