//
//  AbstractFactory.h
//  16-4-20-abstractFactory
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <uikit/uikit.h>
#import "BMWAbstractFactory.h"
#import "BMWAbstractFactory.h"
@interface AbstractFactory : NSObject

+(AbstractFactory *)factory;
-(UIView *)someView;
-(UIToolbar *)toolBar;
-(UIButton *)someButton;
@end
