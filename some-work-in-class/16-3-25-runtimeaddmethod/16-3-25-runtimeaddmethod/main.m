//
//  main.m
//  16-3-25-runtimeaddmethod
//
//  Created by Uno on 2016/3/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"

int addTwoInts(id self, SEL cmd, int a, int b) {
    return a+b;
}

void addMethod() {
    class_addMethod([Person class], @selector(addTwoInts::), (IMP)addTwoInts, "i:li");
    Person *per1 = [Person new];
    int result = [per1 addTwoInts:99:100];
    NSLog(@"%i",result);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        Person *one     = [Person new];
        one.name        = @"Hello";
        one.age         = 999;
        Person *copyOne = object_copy(one, sizeof(one));

        NSLog(@"%s:%i",[copyOne.name UTF8String],copyOne.age);

        addMethod();
    }
    return 0;
}