//
//  Rectangle.h
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Rectangle : GraphicObject {
    float width, height;
}
@property float width, height;
-(float)area;
-(float)perimeter;

@end
