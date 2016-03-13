//
//  main.m
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fra1 = [[Fraction alloc]init];
        
        [fra1 setTo:3 over:100];
        [fra1 print];
        id invertfra1 = [fra1 invert];
        NSLog(@"Invert!");
        [invertfra1 print];
        [fra1 isEqualTo:invertfra1];
        [fra1 isLessThan:invertfra1];
        [fra1 isLessThanOrEqualTo:invertfra1];
        [fra1 isGreaterThan:invertfra1];
        [fra1 isGreaterThanOrEqualTo:invertfra1];
        [fra1 isNotEqualTo:invertfra1];
    }
    return 0;
}
