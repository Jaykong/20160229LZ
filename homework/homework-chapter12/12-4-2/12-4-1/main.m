//
//  main.m
//  12-4-1
//
//  Created by Uno on 2016/3/17.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MIN2(a,b) (a < b) ? (a) : (b)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%i is smaller", MIN2(4,5));
    }
    return 0;
}
