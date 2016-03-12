//
//  main.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "XYPoint.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id dataValue1;
        id dataValue2;
        id result;
        Fraction *fra1 = [[Fraction alloc]init];
        [fra1 setNumerator:3];
        [fra1 setDenominator:5];
        dataValue1     = fra1;
        Fraction *fra2 = [[Fraction alloc]init];
        [fra2 setNumerator:2];
        [fra2 setDenominator:5];
        dataValue2     = fra2;

        result         = [dataValue1 add: dataValue2];
        [result print];

        
    }
    return 0;
}
