//
//  Calculator.h
//  6-5-2
//
//  Created by Uno on 16/3/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(void) add : (double) value;
-(void) minus : (double) value;
-(void) multiply : (double) value;
-(void) divide : (double) value;
-(void) print;
@end
