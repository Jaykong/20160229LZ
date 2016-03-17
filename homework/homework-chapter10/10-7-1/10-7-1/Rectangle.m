//
//  Rectangle.m
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width, height;
-(void)setWidth:(int) w andHeight: (int) h {
    width = w;
    height = h;
}
-(id) initWIthWidth: (int) w andHeight: (int) h {
    self = [super init];
    if (self) {
        self.width = w;
        self.height = h;
    }
    return self;
}
-(int)area {
    return width * height;
}
-(int)perimeter {
    return 2 * (width + height);
}
@end
