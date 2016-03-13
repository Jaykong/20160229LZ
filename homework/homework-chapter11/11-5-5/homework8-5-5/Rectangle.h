//
//  Rectangle.h
//  homework8-5-5
//
//  Created by Uno on 16/3/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject {
    int width, height;
}
@property int width, height;
-(int)area;
-(int)perimeter;

@end
