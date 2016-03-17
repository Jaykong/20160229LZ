//
//  main.m
//  12-4-2
//
//  Created by Uno on 2016/3/17.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MAX3(x,y,z) MAX(x,MAX(y,z))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%i is the biggest.", MAX3(3, 6, 9));
    }
    return 0;
}
