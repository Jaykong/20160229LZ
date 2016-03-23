//
//  main.m
//  13-9-3
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 150;
        int i, prime, multiple, P[n];
        
        for (i = 2; i <= n; ++i)
            P[i] = 1;
        
        for (prime = 2; prime <= n; ++prime)
        {
            if (P[prime])
                for (multiple = 2 * prime; multiple <= n; multiple += prime)
                    if (P[multiple]) {
                        P[multiple] = 0;
                    }
        }
        
        for (i = 2; i <= n; ++i)
        {
            if (P[i])
                NSLog(@"%i", i);
        }
    }
    return 0;
}
