//
//  Triangle.m
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
@synthesize side1, side2, side3;
-(float)area {
    float s= (side1+side2+side3)/2;
    return sqrt(s*(s-side1)*(s-side2)*(s-side3));
}
-(float)perimeter {
    return side1 + side2 + side3;
}
@end
