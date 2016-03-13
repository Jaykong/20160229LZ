//
//  main.m
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *sq = [[Square alloc] init];
        [sq setSide:6];
        
        NSLog(@"%i",[sq area]);
        NSLog(@"%i",[sq perimeter]);
    }
    return 0;
}
