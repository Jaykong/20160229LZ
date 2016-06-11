//
//  BenzAbstractFactory.m
//  16-4-20-abstractFactory
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "BenzAbstractFactory.h"
#import "BenzView.h"
#import "BenzButton.h"
#import "BenzToolbar.h"

@implementation BenzAbstractFactory
-(UIView *)someView {
    return [[BenzView alloc] init];
}
-(UIToolbar *)toolBar {
    return [[BenzToolbar alloc] init];
}
-(UIButton *)someButton {
    return [[BenzButton alloc] init];
}
@end
