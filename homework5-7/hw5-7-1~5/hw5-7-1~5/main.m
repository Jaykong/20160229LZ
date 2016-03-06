//
//  main.m
//  homework5-7
//
//  Created by Uno on 16/3/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\n---题目5-7-1---\n");
        NSLog(@"A table of all intergers in ten and their squared number.\n------");
        int onetoten;
        for (onetoten = 1; onetoten <= 10; ++onetoten) {
            NSLog(@"%i %i",onetoten, onetoten * onetoten);
        }
        
        
        NSLog(@"\n---题目5-7-2---\n");
        int trinumorigin, trinumafter;
        trinumafter = 0;
        NSLog(@"Table of triangular numbers of multiples of 5 from 5 to 50.\n------");
        for ( trinumorigin = 5; trinumorigin <= 50; trinumorigin = trinumorigin +5) {
            trinumafter = trinumorigin * ( trinumorigin + 1 ) / 2;
            NSLog(@"%2i %2i",trinumorigin,trinumafter);
        }
        
        
        NSLog(@"\n---题目5-7-3---\n");
        NSLog(@"Table of factorials of one to ten.\n------");
        int factorial;
//        int factorialResult;
//        factorialResult = 1;
        factorial = 1;
        for (onetoten = 1; onetoten <= 10; ++onetoten) {
            factorial *= onetoten;
//            for (factorial = onetoten; factorial <= onetoten; ++factorial) {
//                factorialResult *= factorial;
//            }
            NSLog(@"%i %i",onetoten,factorial);
        }
        
        NSLog(@"\n---题目5-7-4---\n");
        int trinumafter574;
        NSLog(@"Table of triangular numbers from 1 to 10.\n------");
        for ( trinumorigin = 1; trinumorigin <= 10; ++trinumorigin) {
            trinumafter574 += trinumorigin;
            NSLog(@"%-2i %2i",trinumorigin,trinumafter574);
        }
        
        NSLog(@"\n---题目5-7-5---\n");
        int counter, number, trinumafter575;
        for (counter = 1;; counter++) {
            NSLog(@"Input an interger and I will give a triangular number.\n");
            scanf ("%i", &number);
            trinumafter575 = 0;
            for (onetoten = 1; onetoten <= number; ++onetoten) {
                trinumafter575 += onetoten;
            }
            NSLog(@"Your number is %i, the triangular number is %i.",number,trinumafter575);
        }
        
    }
    return 0;
}
