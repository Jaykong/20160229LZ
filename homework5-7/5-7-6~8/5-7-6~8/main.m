//
//  main.m
//  5-7-6~8
//
//  Created by Uno on 16/3/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int number, trinumber;
        trinumber = 0;
        
//5.2
        
        number = 1;
        while (number <= 200) {
            trinumber += number;
            ++number;
        }
        NSLog(@"The 200th triangular number is %i.",trinumber);

        
//5.3
        trinumber = 0;
        number = 1;
        NSLog(@"table of triangular numbers from 1-10");
        while (number <= 10) {
            trinumber += number;
            NSLog(@"%i %i",number,trinumber);
            ++number;
        }

        
//5.4
        int scanNum, trinumber54 = 0, number54 = 0;
        NSLog(@"input!");
        scanf("%i",&scanNum);
        
        while (number54 < scanNum) {
            ++number54;
            trinumber54 += number54;

        }
            NSLog(@"%i %i",number - 1,trinumber54);
        
        
//5.5
        
        int scanNum55, trinumber55 = 0, number55 = 1, counter = 1;
        while (counter <= 5) {
            NSLog(@"input!");
            scanf("%i",&scanNum55);
            ++counter;
        
        while (number55 <= scanNum55) {
            trinumber55 +=number55;
            ++number55;
        }
        NSLog(@"%i %i",number55, trinumber55);
        }
    }
    
    
    
    return 0;
}
