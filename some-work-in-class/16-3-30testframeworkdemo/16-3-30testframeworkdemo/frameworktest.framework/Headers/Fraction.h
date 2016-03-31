//
//  Fraction.h
//  16-3-30-staticlibrary
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic, assign) int numerator, denominator;
-(Fraction *)substract:(Fraction *) f;
@end
