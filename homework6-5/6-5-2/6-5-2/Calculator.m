//
//  Calculator.m
//  6-5-2
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator {
    double accumulator;
}
-(void)setAccumulator:(double)value {
    accumulator = value;
}
-(void) clear {
    accumulator = 0;
}
-(double) accumulator {
    return accumulator;
}
-(void) add: (double) value {
    accumulator += value;
}
-(void) minus:(double)value {
    accumulator -= value;
}
-(void) multiply:(double)value {
    accumulator *= value;
}
-(void) divide:(double)value {
    accumulator /= value;
}
-(void) print {
    NSLog(@"= %.2f",accumulator);
}
@end
