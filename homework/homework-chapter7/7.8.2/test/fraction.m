//
//  fraction.m
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "fraction.h"

@implementation Fraction
@synthesize numerator, denominator;

-(void) setN:(int)n d:(int)d {
    numerator = n;
    denominator = d;
}
-(void) print: (Boolean) zoidberg {
    Fraction *re = [[Fraction alloc]init];
    re.numerator = numerator;
    re.denominator = denominator;
    if (zoidberg == YES) {
        [re reduce];
        NSLog(@"%i/%i",re.numerator,re.denominator);
    }
    else {
        NSLog(@"%i/%i",numerator,denominator);
    }
}
-(double) convert2num {
    if (denominator != 0) {
        return (double) numerator / denominator;
    }
    else {
        return NAN;
    }
}
-(void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
-(Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc]init];

    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
//    [result reduce];
    return result;
}
-(Fraction *) minus: (Fraction *) f {
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
//    [result reduce];
    return result;
}
-(Fraction *) multiply: (Fraction *) f {
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = (numerator * f.denominator) * (denominator * f.numerator);
    result.denominator = denominator * f.denominator;
    return result;
}
-(Fraction *) divide: (Fraction *) f {
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = (numerator * f.denominator) / (denominator * f.numerator);
    result.denominator = denominator * f.denominator;
    return result;
}

@end
