//
//  Circle.h
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"
@interface Circle : GraphicObject {
    float radius;
}
@property float radius;
-(float)area;
-(float)perimeter;
@end
