//
//  Fraction+MathOps.h
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//


#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *)add: (Fraction *)f;
-(Fraction *)min: (Fraction *)f;
-(Fraction *)mul: (Fraction *)f;
-(Fraction *)div: (Fraction *)f;
-(Fraction *)invert;
@end
