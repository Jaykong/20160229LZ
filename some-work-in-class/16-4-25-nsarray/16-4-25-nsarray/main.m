//
//  main.m
//  16-4-25-nsarray
//
//  Created by Uno on 2016/4/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef int (^block2) (int d, int e);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int (^block1) (int a,int b) = ^(int a, int b) {
            return a + b;
        };
        int c = block1(1,2);
        NSLog(@"%i",c);
        
        block2 f = ^(int d, int e) {
            return d + e;
        };
        
        f(1,2);
        NSLog(@"%i",f);
    }
    return 0;
}
