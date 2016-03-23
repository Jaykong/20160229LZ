//
//  Rectangle.m
//  16-3-23-1
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.origin = [[XYPoint alloc]init];
    }
    return self;
}

- (instancetype)initWithWidth:(int)w andHeight:(int)h
{
    self = [super init];
    if (self) {
        self.origin = [[XYPoint alloc]init];
        [self setWidth:w andHeight:h];
    }
    return self;
}
-(void)setWidth:(int)w andHeight:(int)h {
    self.height = h;
    self.width = w;
}

-(id)copyWithZone:(NSZone *)zone {
    Rectangle *rec = [[[self class] allocWithZone:zone] init];
    rec.width = _width;
    rec.height = _height;
    rec.origin = [_origin copy];
    return rec;
}

-(void)print {
    NSLog(@"(%i,%i),%iw %ih",_origin.x, _origin.y,_width,_height);
}
@end
