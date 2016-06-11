//
//  ImageFilter.m
//  16-4-15-decorator
//
//  Created by Uno on 2016/4/15.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter
-(void)apply {
    
}
-(id)forwardingTargetForSelector:(SEL)aSelector {
    //unrecognizer selector出现时就调用
    if ([NSStringFromSelector(aSelector) hasPrefix:@"draw"]) {
        [self apply];
    }
    return _conponent;
}
@end
