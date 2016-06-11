//
//  ImageFilter.h
//  16-4-15-decorator
//
//  Created by Uno on 2016/4/15.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"
@interface ImageFilter : NSObject<ImageComponent>
@property (nonatomic, strong) id<ImageComponent>conponent;
-(void) apply;
@end
