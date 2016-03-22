//
//  main.m
//  16-3-21-3
//
//  Created by Uno on 2016/3/21.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSFileHandle *infile, *outfile;
        NSData *buffer;
        infile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        [[NSFileManager defaultManager] createFileAtPath:@"outfile" contents:nil attributes:nil];
        
        outfile = [NSFileHandle fileHandleForWritingAtPath:@"outfile"];
        buffer = [infile readDataToEndOfFile];
        
        [outfile writeData: buffer];
        
        NSLog(@"file copy succeed: &@",[NSString stringWithContentsOfFile:@"outfile" encoding:NSUTF8StringEncoding error:NULL]);
        
        [infile closeFile];
        [outfile closeFile];
        
    
    }
    return 0;
}
