//
//  Rectangle.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle {
    XYPoint *origin;
}

-(void) setOrigin: (XYPoint *) pt {
    if (! origin) {
        origin   = [[XYPoint alloc] init];
        origin.x = pt.x;
        origin.y = pt.y;
    }
}
-(XYPoint *) origin {
    return origin;
}
-(float) area {
    return _width * _height;
}
-(float) perimeter {
    return 2 * ( _height + _width);
}
-(void) translate:(XYPoint *)pt
{
    origin.x += pt.x;
    origin.y += pt.y;
}

-(BOOL) containsPoint:(XYPoint *)pt
{
    if (origin.x <= pt.x && origin.x + _width >= pt.x && origin.y <= pt.y && origin.y + _height >= pt.y)
        return YES;
    else
        return NO;
}

-(Rectangle *) intersect:(Rectangle *)r {
    int x1, x2, y1, y2;
    x1 = (origin.x >= r.origin.x? origin.x: r.origin.x);
    x2 = (origin.x+_width <= r.origin.x+r.width? origin.x+_width: r.origin.x+r.width);
    y1 = (origin.y >= r.origin.y? origin.y: r.origin.y);
    y2 = (origin.y+_height <= r.origin.y+r.height? origin.y+_height: r.origin.y+r.height);
    
    Rectangle *newRect = [[Rectangle alloc] init];
    XYPoint *newPoint = [[XYPoint alloc] init];
    
    if (x1 <= x2 && y1 <= y2) {
        newRect.width  = x2 - x1;
        newRect.height = y2 - y1;
        newPoint.x     = x1;
        newPoint.y     = y1;
        NSLog(@"在里面");
    }
    else {
        newRect.width  = 0;
        newRect.height = 0;
        newPoint.x     = 0;
        newPoint.y     = 0;
        NSLog(@"不在里面");
    }
    newRect.origin = newPoint;
    
    return newRect;
}
@end