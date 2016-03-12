//
//  Rectangle.h
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property float height, width;
@property(nonatomic,assign) float translateX, translateY;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(float) area;
-(float) perimeter;
-(void) translate: (XYPoint *) pt;
-(BOOL) containsPoint: (XYPoint *) pt;
-(Rectangle *) intersect: (Rectangle *) r;
@end
