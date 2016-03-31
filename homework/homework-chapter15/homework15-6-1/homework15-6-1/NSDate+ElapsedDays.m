//
//  NSDate+ElapsedDays.m
//  homework15-6-1
//
//  Created by Uno on 2016/3/29.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "NSDate+ElapsedDays.h"

@implementation NSDate (ElapsedDays)

-(unsigned long) elapsedDays: (NSDate *) theDate
{
    return round ([self timeIntervalSinceDate:theDate]/3600)/24;
}

@end
