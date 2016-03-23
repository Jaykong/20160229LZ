//
//  XYPoint.m
//  16-3-23-1
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
-(instancetype)initWithX:(int)x andY:(int)y
{
    self = [super init];
    if (self) {
        [self setX:x andY:y];
    }
    return self;
}
-(void) setX:(int)x andY: (int)y {
    self.x = x;
    self.y = y;
}
-(void)print {
    NSLog(@"(%i,%i)",_x,_y);
}
-(id)copyWithZone:(NSZone *)zone {
    XYPoint *point = [[[self class] allocWithZone:zone] init];
    point.x = self.x;
    point.y = self.y;
    return point;
}
@end
