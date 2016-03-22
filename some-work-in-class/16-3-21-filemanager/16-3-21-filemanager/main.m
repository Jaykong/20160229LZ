//
//  main.m
//  16-3-21-filemanager
//
//  Created by Uno on 2016/3/21.
//  Copyright © 2016年 BrookZero. All rights reserved.

// 这个程序复制一个文件到另一个文件 如果是个文件夹 则复制到目录下
//如果两文件test1 test2
//则把test1的内容复制到test2
//如果test2是文件夹 则会在文件夹里创造一个test1

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {


        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *source, *dest;
        BOOL isdir;
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *argc = [proc arguments];
        
        source = argc[1];
        dest = argc[2];

        if (argc.count != 3) {
            NSLog(@"sopy source dest %@", [NSProcessInfo processInfo]);
            return 2;
        }
        source = argc[1];
        dest = argc[2];
        [fm fileExistsAtPath:dest isDirectory:&isdir];
        if (isdir) {
            dest = [dest stringByAppendingPathComponent:source];
        }

        if ([fm fileExistsAtPath:dest]) {
            [fm removeItemAtPath:dest error:NULL];
        }

        if (![fm copyItemAtPath:source toPath:dest error:NULL]) {
            NSLog(@"copy %@ to %@ file failed",source,dest);
            return 3;
        }

        NSLog(@"copy %@ to %@ file succeed",source,dest);

    }
    return 0;
}
