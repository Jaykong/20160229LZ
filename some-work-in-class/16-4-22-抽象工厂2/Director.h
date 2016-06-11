//
//  Director.h
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Builder.h"
@interface Director : NSObject
@property (nonatomic, strong) Character * character;
+(Character *)enemy:(Builder *)builder;
+(Character *)player:(Builder *)builder;
@end
