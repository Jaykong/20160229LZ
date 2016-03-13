//
//  Fraction+MathOps.m
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(Fraction *)add: (Fraction *)f {
    Fraction *result = [[Fraction alloc]init];
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return  result;
}
-(Fraction *)min:(Fraction *)f{
    Fraction * result = [[Fraction alloc]init];
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return  result;
}
-(Fraction *)mul:(Fraction *)f{
    Fraction * result = [[Fraction alloc]init];
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return  result;
}
-(Fraction *)div:(Fraction *)f{
    Fraction * result = [[Fraction alloc]init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    return result;
}
-(Fraction *)invert{
    Fraction * result = [[Fraction alloc]init];
    result.numerator = self.denominator;
    result.denominator = self.numerator;
    return result;
}
@end
