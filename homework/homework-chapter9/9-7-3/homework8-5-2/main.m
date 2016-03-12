//
//  main.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id dataValue;
        Complex *c1 = [[Complex alloc]init];
        XYPoint *xyp = [[XYPoint alloc]init];
        [c1 setReal:3];
        [c1 setImaginery:5];
        [xyp setX:4 andY:6];
        
        dataValue = c1;
        [dataValue print];
        
        dataValue = xyp;
        [dataValue print];
        
    }
    return 0;
}
