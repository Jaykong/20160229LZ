//
//  Rectangle.h
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle : NSObject {
    float width, height;
}
@property float width, height;
-(void)setWidth:(int) w andHeight: (int) h;
-(id) initWIthWidth: (int) w andHeight: (int) h;
-(int)area;
-(int)perimeter;

@end
