//
//  Complex.m
//  duotai
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Complex.h"

@implementation Complex

-(void) print {
    NSLog(@"%i + %ii",_real,_imaginery);
}
-(Complex *)add:(Complex *)anoCom {
    Complex *result  = [[Complex alloc]init];
    result.real      = _real + anoCom.real;
    result.imaginery = _imaginery + anoCom.imaginery;
    return result;
}
@end
