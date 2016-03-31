//
//  Fraction.m
//  16-3-30-staticlibrary
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(Fraction *)substract:(Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = _numerator *f.denominator -f.numerator * _denominator;
    result.denominator = _numerator * f.denominator;
    return result;
}
@end
