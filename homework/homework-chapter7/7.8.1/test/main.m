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
        Fraction *af = [[Fraction alloc]init];
        Fraction *bf = [[Fraction alloc]init];
        Fraction *reFraction;
        [af setN:1 d:4];
        [bf setN:1 d:2];
        reFraction = [af minus:bf];
        [reFraction print];
    }
    return 0;
}