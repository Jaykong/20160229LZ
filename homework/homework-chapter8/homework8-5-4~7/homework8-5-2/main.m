//
//  main.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *rec = [[Rectangle alloc]init];
        XYPoint *p     = [[XYPoint alloc]init];
        [p setX:100];
        [p setY:200];
        [rec setWidth: 5];
        [rec setHeight: 8];
        rec.origin     = p;
        NSLog(@"%.2f %.2f",rec.width,rec.height);
        NSLog(@"%.2f %.2f",rec.origin.x,rec.origin.y);
        NSLog(@"%.2f %.2f",rec.area,rec.perimeter);
        [p setX:1];
        [p setY:2];
        [rec translate:p];
        NSLog(@"translate to (%.2f, %.2f)", rec.origin.x, rec.origin.y);
        [p setX:205];
        [p setY:305];
        [rec containsPoint:p];
        
        [p setX:400];
        [p setY:300];
        rec.origin = p;
        [rec setWidth:100];
        [rec setHeight:180];
        
//        [rec intersect:];
        
    }
    return 0;
}
