//
//  GraphicObject.h
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{
    int fillColor;  // 32-bit color
    BOOL filled;    // Is the object filled?
    int lineColor;  // 32-bit line color
}
@property int fillColor, lineColor;
@property BOOL filled;

@end
