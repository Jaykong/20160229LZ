//
//  main.m
//  4-5
//
//  Created by Uno on 16/3/5.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle : NSObject
-(void)setWidth: (int) w;
-(void)setHeight: (int)h;
-(int)width;
-(int)height;
-(void)getArea;
-(void)getPerimeter;
-(int)area;
-(int)perimeter;
-(void)print;
@end

@implementation Rectangle{
    int width;
    int height;
    int area;
    int perimeter;
}
-(int)width{
    return width;
}
-(int)height{
    return height;
}
-(void)setWidth: (int) w{
    width = w;
}
-(void)setHeight: (int)h{
    height = h;
}
-(int)area{
    return area;
}
-(int)perimeter{
    return perimeter;
}
-(void)getArea {
    area =  width * height;
}
-(void)getPerimeter {
    perimeter = 2 * width + 2 * height;
}
-(void)print {
    NSLog(@"H: %i W: %i A: %i P: %i",height,width,area,perimeter);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *re = [[Rectangle alloc]init];
        [re setWidth:4];
        [re setHeight:5];
        [re getArea];
        [re getPerimeter];
        [re print];
    }
    return 0;
}
