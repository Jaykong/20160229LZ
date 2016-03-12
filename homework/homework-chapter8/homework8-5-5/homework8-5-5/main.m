//
//  main.m
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Triangle.h"
#import "Rectangle.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rec = [[Rectangle alloc]init];
        Circle *cir = [[Circle alloc]init];
        Triangle *tri = [[Triangle alloc]init];
        [tri setSide1:3];
        [tri setSide2:4];
        [tri setSide3:5];
        NSLog(@"%.2f %.2f",tri.area,tri.perimeter);
        [cir setRadius:3];
        NSLog(@"%.2f %.2f",cir.area,cir.perimeter);
        [rec setWidth:4];
        [rec setHeight:5];
        NSLog(@"%.2f %.2f",rec.area,rec.perimeter);
    }
    return 0;
}
