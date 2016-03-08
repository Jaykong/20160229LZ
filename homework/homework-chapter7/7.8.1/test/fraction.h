//
//  fraction.h
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int denominator, numerator;
-(void) setN:(int)n d:(int)d;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) minus: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(double) convert2num;
-(void) reduce;
-(void) print;
@end

