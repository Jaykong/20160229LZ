//
//  Fraction.m
//  duotai
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(void) print {
    NSLog(@"%i %i",_numerator,_denominator);
}
-(Fraction *)add: (Fraction *)f {
    Fraction *result = [[Fraction alloc]init];
    result.numerator = _numerator * f.denominator +f.numerator * _denominator;
    result.denominator = _denominator * f.denominator;
    return result;
}
@end
