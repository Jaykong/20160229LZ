//
//  main.m
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "XYPoint.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fraction = [[Fraction alloc]init];
        Complex *complex   = [[Complex alloc]init];
        id number          = [[Complex alloc]init];
        if ([fraction isMemberOfClass:[Complex class]] == YES) {
            NSLog(@"[fraction isMemberOfClass:[Complex class]] == YES");
        }
        else {
            NSLog(@"[fraction isMemberOfClass:[Complex class]] == NO");
        }
        if ([complex isMemberOfClass:[NSObject class]] == YES) {
            NSLog(@"[complex isMemberOfClass:[NSObject class]] == YES");
        }
        else {
            NSLog(@"[complex isMemberOfClass:[NSObject class]] == NO");
        }
        if ([fraction isKindOfClass:[Fraction class]] == YES) {
            NSLog(@"[fraction isKindOfClass:[Fraction class]] ==YES");
        }
        else {
            NSLog(@"[fraction isKindOfClass:[Fraction class]] ==NO");
        }
        if ([fraction respondsToSelector:@selector(print)] == YES) {
            NSLog(@"[fraction respondsToSelector:@selector(print)] == YES");
        }
        else {
            NSLog(@"[fraction respondsToSelector:@selector(print)] == NO");
        }
        if ([complex respondsToSelector:@selector(print)] == YES) {
            NSLog(@"[complex respondsToSelector:@selector(print)] == YES");
        }
        else {
            NSLog(@"[complex respondsToSelector:@selector(print)] == NO");
        }
        if ( [Fraction instancesRespondToSelector:@selector(print)] == YES) {
            NSLog(@"[Fraction instancesRespondToSelector:@selector(print)] == YES");
        }
        else {
            NSLog(@"[Fraction instancesRespondToSelector:@selector(print)] == NO");
        }
        if ([number respondsToSelector:@selector(print)] == YES) {
            NSLog(@"[number respondsToSelector:@selector(print)] == YES");
        }
        else {
            NSLog(@"[number respondsToSelector:@selector(print)] == NO");
        }
        if ([number isKindOfClass:[Complex class]] == YES) {
            NSLog(@"[number isKindOfClass:[Complex class]] == YES");
        }
        else {
            NSLog(@"[number isKindOfClass:[Complex class]] == NO");
        }
        if ([[number class] respondsToSelector: @selector(alloc)] == YES) {
            NSLog(@"[[number class] respondsToSelector: @selector(alloc)] == YES");
        }
        else {
            NSLog(@"[[number class] respondsToSelector: @selector(alloc)] == NO");
        }


    }
    return 0;
}


//RESULT:
//2016-03-12 21:21:05.174 homework8-5-2[5824:475320] [fraction isMemberOfClass:[Complex class]] == NO
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [complex isMemberOfClass:[NSObject class]] == NO
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [fraction isKindOfClass:[Fraction class]] ==YES
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [fraction respondsToSelector:@selector(print)] == YES
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [complex respondsToSelector:@selector(print)] == YES
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320]  [Fraction instancesRespondToSelector:@selector(print)] == YES
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [number respondsToSelector:@selector(print)] == YES
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [number isKindOfClass:[Complex class]] == YES
//2016-03-12 21:21:05.175 homework8-5-2[5824:475320] [[number class] respondsToSelector: @selector(alloc)] == YES
//Program ended with exit code: 0
