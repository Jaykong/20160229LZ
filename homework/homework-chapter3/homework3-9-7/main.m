//
//  main.m
//  homework3-9-7
//
//  Created by Uno on 16/3/3.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义新类, CP stands for Coordinate Point.
@interface XYpoint : NSObject {
    float XCP;              //分类:x坐标的值
    float YCP;              //分类:y坐标的值
}

-(float)XCP;
-(void)setXCP:(float)x;     //获取x坐标的值

-(float)YCP;
-(void)setYCP:(float)y;     //获取y坐标的值



@end

//定义变量
@implementation XYpoint {}
-(float)XCP {
    return XCP;
}
-(void)setXCP:(float)x {    //获取x坐标的值
    XCP = x;
}
-(float)YCP {
    return YCP;
}
-(void)setYCP:(float)y {    //获取y坐标的值
    YCP = y;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //申明类
        XYpoint *cp = [[XYpoint alloc] init];

        //设置x坐标与y坐标的数值, 此处x=4,y=5
        [cp setXCP:4];
        [cp setYCP:5];
        
        //显示结果的信息
        NSLog(@"The coordinate point of (x,y) is (%g,%g).",[cp  XCP],[cp YCP]);
    }
    return 0;
}
