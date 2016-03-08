//
//  main.m
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "fraction.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fff = [[Fraction alloc]init];
        fff.numerator = 20;
        fff.denominator = 2;
        [fff print];
    }
    return 0;
}