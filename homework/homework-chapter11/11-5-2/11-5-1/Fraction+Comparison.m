//
//  Fraction+Comparison.m
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Fraction+Comparison.h"
#import "Fraction+MathOps.h"

@implementation Fraction (Comparison)
-(bool) isEqualTo: (Fraction *)f {
    Fraction *comparing;
    comparing = [self min:f];
    if ( f == 0) {
        NSLog(@"这两个分数是相同的唉!");
        return YES;
    }
    else {
        NSLog(@"这两个分数不尽相同.");
        return NO;
    }
    
}
-(int) compare: (Fraction *)f {
    double compareResult = [[self min:f]convertToNum];
    if (compareResult < 0) {
        NSLog(@"-1");
    }
    else if (compareResult > 0) {
        NSLog(@"+1");
    }
    else {
        NSLog(@"0");
    }
    return compareResult;
}
@end
