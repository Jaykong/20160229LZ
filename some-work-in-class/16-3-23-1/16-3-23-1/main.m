//
//  main.m
//  16-3-23-1
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XYPoint *point1 = [[XYPoint alloc] initWithX:3 andY:2];
        XYPoint *point2 = [point1 copy];
//        XYPoint *point3 = [point1 copy: point2];
        [point1 print];
        [point2 print];
//        [point3 print];
        Rectangle *rec = [[Rectangle alloc] initWithWidth:5 andHeight:6];
        rec.origin = point1;
        [rec print];
        Rectangle *rec2 = [rec copy];
        [rec2 print];
        [point1 setX:4 andY:3];
        [rec print];
        [rec2 print];
    }
    return 0;
}
