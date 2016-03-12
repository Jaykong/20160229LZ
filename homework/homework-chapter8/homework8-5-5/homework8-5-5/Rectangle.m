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
-(float)area {
    return width * height;
}
-(float)perimeter {
    return 2 * (width + height);
}
@end
