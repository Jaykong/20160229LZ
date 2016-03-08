//
//  main.m
//  hw5-7-8
//
//  Created by Uno on 16/3/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, rd, sum = 0;
        NSLog(@"enter number");
        scanf("%i",&number);
        do {
            rd = number % 10;
            sum += rd;
            number /= 10;
        }
        while (number != 0); {
            NSLog(@"%i",sum);
        }
    }
    return 0;
}
