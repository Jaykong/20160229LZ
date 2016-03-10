//
//  Rectangle.h
//  homework8-5-2
//
//  Created by Uno on 16/3/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;
@interface Rectangle : NSObject

@property int height, width;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth:(float) w andHeight:(float) h;
-(float) area;
-(float) perimeter;
@end
