//
//  XYPoint.h
//  16-3-23-1
//
//  Created by Uno on 2016/3/23.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>
@property (nonatomic, assign) int x,y;
-(instancetype)initWithX:(int)x andY:(int)y;
-(void) setX:(int)x andY: (int)y;
-(void)print;
@end
