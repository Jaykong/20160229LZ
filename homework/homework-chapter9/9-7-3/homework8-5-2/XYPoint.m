//
//  XYPoint.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize  x,y;
-(void) setX: (float) xVal andY: (float) yVal {
    x = xVal;
    y = yVal;
}
-(void) print {
    NSLog(@"(%.2f,%.2f)",x,y);
}
@end
