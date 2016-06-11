//
//  BMWAbstractFactory.m
//  16-4-20-abstractFactory
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "BMWAbstractFactory.h"
#import "BMWview.h"
#import "BMWButton.h"
#import "BMWtoolbar.h"

@implementation BMWAbstractFactory
-(UIView *)someView {
    return [[BMWview alloc] init];
}
-(UIToolbar *)toolBar {
    return [[BMWtoolbar alloc] init];
}
-(UIButton *)someButton {
    return [[BMWButton alloc] init];
}
@end
