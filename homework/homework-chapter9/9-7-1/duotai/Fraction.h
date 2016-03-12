//
//  Fraction.h
//  duotai
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;
-(Fraction *)add: (Fraction *)f;
@end
