//
//  main.m
//  6-5-7
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p,d,isPrime;
        for(p = 2;p <= 50;){
            isPrime = 1;
            for(d = 2;d < p && isPrime != 0; ++d){
                if(p % d == 0){
                    isPrime = 0;
                }
            }
            if(isPrime != 0){
                NSLog(@"%i",p);
            }
            if(p == 2){
                p++;
            }
            else{
                p += 2;
            }
        }
    }
    return 0;
}