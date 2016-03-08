//
//  fraction.m
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "fraction.h"

@implementation Fraction {
    int numerator;
    int denominator;
}
-(void) setNumerator: (int) n {
    numerator = n;
}
-(int) numerator {
    return  numerator;
}
-(void) setDenominator: (int) d {
    denominator = d;
}
-(int) denominator {
    return denominator;
}
-(void) print {
    NSLog(@"%i/%i",numerator,denominator);
}

@end
