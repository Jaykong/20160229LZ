//
//  main.m
//  6-5-6
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num,left_digit;
        int num2 = 0;
        NSLog(@"input number");
        scanf(" %i",&num);
        int i = 0;
        if(num < 0){
            num = -num;
            i = 1;
        }
        if(i == 1){
            NSLog(@"-");
        }
        num2 = 1;
        if(num == 0){
            NSLog(@"zero");
        }
        else{
            while(num != 0){
                num2 = num2 * 10 + num % 10;
                num /= 10;
            }
            do{
                left_digit = num2 % 10;
                num2 /= 10;
                switch (left_digit){
                    case 0:
                        NSLog(@"zero");
                        break;
                    case 1:
                        NSLog(@"one");
                        break;
                    case 2:
                        NSLog(@"two");
                        break;
                    case 3:
                        NSLog(@"three");
                        break;
                    case 4:
                        NSLog(@"four");
                        break;
                    case 5:
                        NSLog(@"five");
                        break;
                    case 6:
                        NSLog(@"six");
                        break;
                    case 7:
                        NSLog(@"seven");
                        break;
                    case 8:
                        NSLog(@"eight");
                        break;
                    case 9:
                        NSLog(@"nine");
                        break;
                    default:
                        NSLog(@"?????");
                        break;
                }
            }
            while(num2 != 1);
            return 0;
        }
    }
}
