//
//  Fraction+Comparison.h
//  11-5-1
//
//  Created by Uno on 16/3/13.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Fraction (Comparison)
-(bool) isEqualTo: (Fraction *)f;
-(int) compare: (Fraction *)f;
@end
