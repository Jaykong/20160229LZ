//
//  Builder.h
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
@interface Builder : NSObject
@property (nonatomic, strong) Character * character;
-(Builder *)buildChar;
-(Builder *)buildSTM:(float)value;
-(Builder *)buildITL:(float)value;
-(Builder *)buildAGI:(float)value;
-(Builder *)buildAGR:(float)value;
-(Builder *)buildSTR:(float)value;

@end
