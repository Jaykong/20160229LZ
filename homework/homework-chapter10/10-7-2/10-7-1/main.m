//
//  main.m
//  10-7-1
//
//  Created by Uno on 2016/3/16.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id rect= [[Rectangle alloc] initWIthWidth:5 andHeight:8];
        NSLog(@"rect area %d",[rect area]);
        NSLog(@"rect peri %d",[rect perimeter]);
        id squa= [[Square alloc] initWithSide:6];
        NSLog(@"squa area %d",[squa area]);
        NSLog(@"squa peri %d",[squa perimeter]);
    }
    return 0;
    
}
