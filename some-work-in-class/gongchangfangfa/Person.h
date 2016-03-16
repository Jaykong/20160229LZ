//
//  Person.h
//  gongchangfangfa
//
//  Created by Uno on 16/3/14.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age, sex;
@property float height;
@property NSString *name;
+(NSString *)selectName: (int)age;
@end
