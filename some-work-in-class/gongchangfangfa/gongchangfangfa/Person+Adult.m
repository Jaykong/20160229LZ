//
//  Person+Adult.m
//  gongchangfangfa
//
//  Created by Uno on 16/3/14.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Person+Adult.h"

@implementation Adult : Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"adult";
        self.age = 20;
        self.height = 170;
        self.sex = 0;
    }
    return self;
}
@end
