//
//  main.m
//  hw6-5-1
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int num1, num2;
        NSLog(@"Input a number");
        scanf("%i",&num1);
        NSLog(@"Input another number");
        scanf("%i",&num2);
        
        if ( num1 % num2 == 0) {
            NSLog(@"%i可以被%i整除.",num1,num2);
        }
        else {
            NSLog(@"%i真的不可以被%i整除!",num1,num2);
        }
    }
    return 0;
}
