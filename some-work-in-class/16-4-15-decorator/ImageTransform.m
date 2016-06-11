//
//  ImageTransform.m
//  16-4-15-decorator
//
//  Created by Uno on 2016/4/15.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ImageTransform.h"
#import <uikit/UIKit.h>

@implementation ImageTransform
-(void) apply {
    CGContextRef content = UIGraphicsGetCurrentContext();
    CGAffineTransform transform = CGAffineTransformMakeTranslation(20, 20);
    CGContextConcatCTM(<#CGContextRef  _Nullable c#>, <#CGAffineTransform transform#>)
}
@end
