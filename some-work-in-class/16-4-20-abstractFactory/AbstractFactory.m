//
//  AbstractFactory.m
//  16-4-20-abstractFactory
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "AbstractFactory.h"
#import "BMWAbstractFactory.h"
#import "BenzAbstractFactory.h"
@implementation AbstractFactory
+(AbstractFactory *)factory {
#define BMWfactory2
#ifdef BMWfactory2
    return [[BMWFactory alloc] init];
#else
    return [[BenzFactory alloc] init];
#endif
}
@end
