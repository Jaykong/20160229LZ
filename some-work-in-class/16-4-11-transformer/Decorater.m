//
//  Decorater.m
//  16-4-11-transformer
//
//  Created by Uno on 2016/4/11.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Decorater.h"

@implementation Decorater

-(void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
    CGContextConcatCTM(context, transform);
    [_Image drawInRect: rect];
}
@end
