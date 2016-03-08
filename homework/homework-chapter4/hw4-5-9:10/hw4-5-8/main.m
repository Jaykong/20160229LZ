//
//  main.m
//  hw4-5-8
//
//  Created by Uno on 16/3/5.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(void)     setAccumulator:     (double) value;
-(void)     clear;
-(double)   accumulator;
-(void)     add:                (double) value;
-(void)     substract:          (double) value;
-(void)     multiply:           (double) value;
-(void)     divide:             (double) value;
-(double)   changeSign;         //4-5-9
-(double)   reciprocal;
-(double)   xSquared;
-(double)   memoClear;          //4-5-10
-(double)   memoStore;
-(double)   memoRecall;
-(double)   memoAdd:            (double) mValue;
-(double)   memoSub:            (double) mValue;
@end

@implementation Calculator {
    double accumulator;
    double mValue;              //4-5-10
}
-(void)     setAccumulator:     (double) value {
    accumulator = value;
}
-(void)     clear {
    accumulator = 0;
}
-(double)   accumulator {
    return accumulator;
}
-(void)     add:                (double) value {
    accumulator += value;
}
-(void)     substract:          (double) value {
    accumulator -= value;
}
-(void)     multiply:           (double) value {
    accumulator *= value;
}
-(void)     divide:             (double) value {
    accumulator /= value;
}
-(double)   changeSign {
    return accumulator *= -1;               //4-5-9
}
-(double)   reciprocal {
    return mValue;
}
-(double)   xSquared {
    return accumulator *= accumulator;      //4-5-9
}
-(double)   memoClear {                     //4-5-10
    return mValue *=0;
}
-(double)   memoRecall {
    return accumulator = mValue;
}
-(double)   memoStore {
    return mValue = accumulator;
}
-(double)   memoAdd:            (double) value {
    return mValue += value;
}
-(double)   memoSub:            (double) value {
    return mValue -= value;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc]init];
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.0];
        [deskCalc substract:10.0];
        [deskCalc multiply:5];
        [deskCalc changeSign];  //4-5-9
        [deskCalc xSquared];
        [deskCalc memoStore];
        
        NSLog(@"result: %g, Number in memory: %g",[deskCalc accumulator],[deskCalc reciprocal]);
        [deskCalc memoSub:2000];
        NSLog(@"# in memo: %g",[deskCalc reciprocal]);
    }
    return 0;
}
