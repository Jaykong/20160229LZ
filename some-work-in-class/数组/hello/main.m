//
//  main.m
//  hello
//
//  Created by Uno on 16/3/14.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *st1        = @"this is a string A";
        NSLog(@"%@",st1);
        NSMutableString *st2 = [NSMutableString stringWithString:st1];
        [st2 insertString:@" not" atIndex:7];
        NSLog(@"%@",st2);


        NSArray *ar1         = @[@"1",@"2",@"3"];//字符数组
        NSArray *ar2         = @[@1,@2,@3];//数字数组
        NSNumber *one = [NSNumber numberWithInt:10];
    }
    return 0;
}
