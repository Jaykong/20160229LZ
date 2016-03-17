//
//  fraction.m
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "fraction.h"

static int addcount;

@implementation Fraction
@synthesize numerator, denominator;

-(void) setN:(int)n d:(int)d {
    numerator          = n;
    denominator        = d;
}
-(void) print {
    if (numerator == 0) {
        NSLog(@"Result is 0.");
    }
    else {
        if ( numerator % denominator == 0) {
            NSLog(@"Result is %i.",numerator / denominator);
        }
        else {
            NSLog(@"Result is %i/%i.",numerator,denominator);
        }
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
    int u              = numerator;
    int v              = denominator;
    int temp;
    while (v != 0) {
    temp               = u % v;
    u                  = v;
    v                  = temp;
    }
    numerator /= u;
    denominator /= u;
}
-(Fraction *) add: (Fraction *) f {
    Fraction *result   = [[Fraction alloc]init];

    result.numerator   = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    extern int addcount;
    ++addcount;
    return result;
}
+(int) howmanycount {
    extern int addcount;
    return addcount;
}
@end
