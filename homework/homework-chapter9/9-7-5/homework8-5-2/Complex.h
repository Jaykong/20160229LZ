//
//  Complex.h
//  duotai
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property int real, imaginery;
-(void) print;
-(Complex *)add:(Complex *)anoCom;
@end
