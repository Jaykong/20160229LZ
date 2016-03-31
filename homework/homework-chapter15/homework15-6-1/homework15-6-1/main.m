//
//  main.m
//  homework15-6-1
//
//  Created by Uno on 2016/3/29.
//  Copyright © 2016年 BrookZero. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate date];
        
        NSDate *threedaysago = [NSDate dateWithTimeIntervalSinceNow:-(3600*24*3)];
        
        
        NSLog(@"%@",now);
        NSLog(@"%@",threedaysago);
        
        NSLog(@"%lu",([now elapsedDays:threedaysago]));
        
        
    }
    return 0;
}
