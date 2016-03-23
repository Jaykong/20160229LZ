//
//  main.m
//  13-9-1
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
float average (float array10[]) {
    float sum;
    for (int i = 0; i < 10; ++i) {
        sum += array10[i];
    }
    return sum / 10;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float array10[] = {1,2,3,4,5,6,7,8,9,10};
        NSLog(@"%.2f",average(array10));
    }
    return 0;
}
