//
//  Rectangle.h
//  16-3-23-1
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject
@property (nonatomic,assign) int width, height;
@property (nonatomic, copy) XYPoint *origin;
- (instancetype)initWithWidth:(int)w andHeight:(int)h;
-(void)setWidth:(int)w andHeight:(int)h;
-(id)copyWithZone:(NSZone *)zone;
-(void)print;
@end
