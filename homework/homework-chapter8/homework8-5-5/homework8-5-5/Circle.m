//
//  Circle.m
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Circle.h"

@implementation Circle
@synthesize radius;
-(float)area {
    return radius * radius * M_1_PI;
}
-(float)perimeter {
    return 2 * M_1_PI * radius;
}
@end
