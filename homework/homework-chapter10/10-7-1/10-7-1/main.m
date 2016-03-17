//
//  main.m
//  10-7-1
//
//  Created by Uno on 2016/3/16.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id rect= [[Rectangle alloc] initWIthWidth:5 andHeight:8];
        NSLog(@"%f",[rect area]);
        NSLog(@"%f",[rect perimeter]);
    }
    return 0;
    
}
