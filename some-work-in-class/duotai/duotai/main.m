//
//  main.m
//  duotai
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *com = [[Complex alloc]init];
        [com setReal:5];
        [com setImaginery:6];
        [com print];
        
        Complex *com1 = [[Complex alloc]init];
        [com1 setReal:3];
        [com1 setImaginery:2];
        Complex *result = [com add: com1];
        [result print];
        
        
        Fraction *fra1 = [[Fraction alloc]init];
        [fra1 setNumerator:3];
        [fra1 setDenominator:4];
        [fra1 print];
        Fraction *fra2 = [[Fraction alloc] init];
        [fra2 setNumerator:2];
        [fra2 setDenominator:4];
        Fraction * resu = [fra1 add: fra2];
        [resu print];
    }
    return 0;
}
