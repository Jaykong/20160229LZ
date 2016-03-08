//
//  fraction.h
//  inclass16-3-7
//
//  Created by Uno on 16/3/7.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(int) numerator;
-(int) denominator;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(void) print;
@end

