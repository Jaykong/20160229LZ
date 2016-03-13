//
//  Fraction.h
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
-(void) setTo: (int) n over: (int) d;
-(void) reduce;
-(double) convertToNum;
-(void) print;
@end


@interface Fraction (NSComparisonMethods)

-(BOOL)isEqualTo:(id)object;
-(BOOL)isLessThanOrEqualTo:(id)object;
-(BOOL)isLessThan:(id)object;
-(BOOL)isGreaterThanOrEqualTo:(id)object;
-(BOOL)isGreaterThan:(id)object;
-(BOOL)isNotEqualTo:(id)object;

@end