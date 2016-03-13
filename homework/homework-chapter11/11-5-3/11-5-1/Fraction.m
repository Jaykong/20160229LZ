//
//  Fraction.m
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;

-(void) setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
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

-(double) convertToNum {
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


@end



@implementation Fraction (NSComparisonMethods)

-(BOOL) isEqualTo: (id) object
{
    if ( (double) numerator/denominator == (double) [object numerator] / [object denominator] )
        return YES;
    else
        return NO;
}

-(BOOL) isLessThanOrEqualTo: (id) object
{
    if ( (double) numerator/denominator <= (double) [object numerator] / [object denominator] )
        return YES;
    else
        return NO;
}

-(BOOL) isLessThan: (id) object
{
    if ( (double) numerator/denominator < (double) [object numerator] / [object denominator] )
        return YES;
    else
        return NO;
}

-(BOOL) isGreaterThanOrEqualTo: (id) object
{
    if ( (double) numerator/denominator >= (double) [object numerator] / [object denominator] )
        return YES;
    else
        return NO;
}

-(BOOL) isGreaterThan: (id) object
{
    if ( (double) numerator/denominator > (double) [object numerator] / [object denominator] )
        return YES;
    else
        return NO;
}
-(BOOL) isNotEqualTo: (id) object
{
    if ( (double) numerator/denominator != (double) [object numerator] / [object denominator] )
        return YES;
    else
        return NO;
}
@end