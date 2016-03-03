//
//  main.m
//  ObjectAndClassofLZ
//
//  Created by Uno on 16/3/2.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle:NSObject {
        float _width;   //声明变量"宽度"
        float _height;  //声明变量"高度"
}

-(float)getWidth;       //接收宽度变量
-(void)setWidth;

-(float)getHeight;      //接收高度变量
-(void)setHeight;

-(float)calculateArea;  //计算面积

@end


@implementation Rectangle //接口


-(float)getWidth{
    return _width;
}                        //接收宽度的接口

-(void)setWidth:(float)width{
    _width = width;
}


-(float)getHeight{
    return _height;
}                       //接收高度的接口

-(void)setHeight:(float)height{
    _height = height;
}


-(float)calculateArea{
    return _height * _width;
}                       //计算面积的接口
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //调用函数
        Rectangle *rect = [[Rectangle alloc] init];
        
        [rect setHeight:2];     //设定高度为2
        [rect setWidth:3];      //设定宽度为3
        
        NSLog(@"the height is %f",[rect getHeight]);        //在屏幕上显示高度的信息
        NSLog(@"the width is %f",[rect getWidth]);          //在屏幕上显示宽度的信息
        NSLog(@"the area is %f",[rect calculateArea]);      //在屏幕上显示面积的信息
    }
    return 0;                   //程序结束
}
