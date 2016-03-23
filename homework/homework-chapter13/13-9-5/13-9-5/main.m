//
//  main.m
//  13-9-5
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef struct date {
            int month;
            int day;
            int year;
        } Date;
        Date todaysDate;
        
        NSLog(@"今天是_年_月_日? ");
        scanf("%i %i %i", &todaysDate.year, &todaysDate.month, &todaysDate.day);
        
        NSLog(@"今天是%i年%i月%i日", todaysDate.year, todaysDate.month, todaysDate.day);
    }
    return 0;
}
