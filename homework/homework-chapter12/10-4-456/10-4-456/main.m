//
//  main.m
//  10-4-456
//
//  Created by Uno on 2016/3/17.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

#define IS_LOWER_CASE(c) (c >= 'a' && c <= 'z')
#define IS_UPPER_CASE(c) (c >= 'A' && c <= 'Z')
#define IS_ALPHABETIC(c) (IS_LOWER_CASE(c) || IS_UPPER_CASE(c))
#define IS_数字(c) (c >= '0' && c <= '9')
#define IS_特殊字符(c) (!IS_ALPHABETIC(c) && !IS_数字(c))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // Lowercase
        NSLog(@"'a' :1是0不是   小写字母? %i", IS_LOWER_CASE('a'));
        NSLog(@"'A' :1是0不是   小写字母? %i", IS_LOWER_CASE('A'));
        
        // Uppercase
        NSLog(@"'a' :1是0不是   大写字母? %i", IS_UPPER_CASE('a'));
        NSLog(@"'A' :1是0不是   大写字母? %i", IS_UPPER_CASE('A'));
        
        // Alphabetic
        NSLog(@"'A' :1是0不是   字母? %i", IS_ALPHABETIC('A'));
        NSLog(@"'1' :1是0不是   字母? %i", IS_ALPHABETIC('1'));
        
        // 数字
        NSLog(@"'1' :1是0不是   数字? %i", IS_数字('1'));
        NSLog(@"'a' :1是0不是   数字? %i", IS_数字('a'));
        
        // 特殊字符 characer
        NSLog(@"'1' :1是0不是   特殊字符? %i", IS_特殊字符('1'));
        NSLog(@"'A' :1是0不是   特殊字符? %i", IS_特殊字符('A'));
        NSLog(@"'_' :1是0不是   特殊字符? %i", IS_特殊字符('_'));
    }
    return 0;
}
