//
//  main.m
//  homework8-5-1
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject {
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar {
    x = 100;
}
@end

@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar {
    NSLog(@"x = %i",x);
}
@end

@interface ClassC : ClassB
-(void)initVar;
@end

@implementation ClassC
-(void) initVar {
    x = 300;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc]init];
        ClassC *c = [[ClassC alloc]init];
        [b initVar];
        [b printVar];
        [c initVar];
        [c printVar];
    }
    return 0;
}
