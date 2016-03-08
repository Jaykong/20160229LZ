//
//  fraction.m
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "fraction.h"

@implementation Fraction

-(void) setN:(int)n d:(int)d {
    _numerator = n;
    _denominator = d;
}
-(void) print {
    if (_numerator == 0) {
        NSLog(@"Result is 0.");
    }
    else {
        if ( _numerator % _denominator == 0) {
            NSLog(@"Result is %i.",_numerator / _denominator);
        }
        else {
            NSLog(@"Result is %i/%i.",_numerator,_denominator);
        }
    }
}
-(void) add: (Fraction *) f {
    _numerator = _numerator * f.denominator + _denominator * f.numerator;
    _denominator = _denominator * f.denominator;
}
-(void) reduce {
    int u = _numerator;
    int v = _denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        v = temp;
    }
    _numerator /= u;
    _denominator /= u;
}
@end
