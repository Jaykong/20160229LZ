//
//  viewone.m
//  14
//
//  Created by Uno on 16/3/14.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "viewone.h"
#import "ViewController.h"
@interface viewone ()

@end

@implementation viewone

-(void) drawrect:(CGRect) rect {
    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor redColor]setFill];
    [path fill];
//    [self setNeedsLayout];
}

@end
