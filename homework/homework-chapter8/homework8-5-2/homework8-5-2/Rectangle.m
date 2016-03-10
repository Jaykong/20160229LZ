//
//  Rectangle.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle {
    XYPoint *origin;
}
@synthesize height, width;
-(void) setWidth:(float) w andHeight:(float) h {
    width = w;
    height = h;
}
-(void) setOrigin:(XYPoint *)pt {
    origin = pt;
}
-(float) area {
    return width * height;
}
-(float) perimeter {
    return 2 * ( height + width);
}
-(XYPoint *) origin {
    return origin;
}
@end
