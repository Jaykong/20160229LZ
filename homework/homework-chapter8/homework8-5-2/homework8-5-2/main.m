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
        XYPoint *p = [[XYPoint alloc]init];
        [p setX:100 andY:200];
        [rec setWidth:5 andHeight: 8];
        rec.origin = p;
        NSLog(@"%d %d",rec.width,rec.height);
        NSLog(@"%f %f",rec.origin.x,rec.origin.y);
        NSLog(@"%f %f",rec.area,rec.perimeter);
        
    }
    return 0;
}
