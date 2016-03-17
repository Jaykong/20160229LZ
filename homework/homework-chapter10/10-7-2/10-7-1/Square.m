//
//  Square.m
//  homework8-5-5
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"
@implementation Square {
    Rectangle *rec;
}
@synthesize side;
- (instancetype) initWithSide: (int) s {
    self = [super init];
    if (self) {
        self.side = s;
        rec = [[Rectangle alloc]init];
        [rec setWidth:s];
        [rec setHeight:s];
    }
    return self;
}

-(void) setSide: (int) s{
    rec = [[Rectangle alloc]init];
    [rec setWidth:s];
    [rec setHeight:s];
    side = s;
}
-(int) side {
    return side;
}
-(int)area{
    return [rec area];
}
-(int)perimeter{
    return [rec perimeter];
}
@end
