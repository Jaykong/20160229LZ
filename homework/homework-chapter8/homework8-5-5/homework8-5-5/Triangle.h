//
//  Triangle.h
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"
@interface Triangle : GraphicObject {
    float side1, side2, side3;
}
@property float side1,side2,side3;
-(float)area;
-(float)perimeter;

@end
