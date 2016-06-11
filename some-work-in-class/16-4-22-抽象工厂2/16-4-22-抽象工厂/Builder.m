//
//  Builder.m
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Builder.h"

@implementation Builder
- (instancetype)init
{
    self = [super init];
    if (self) {
        _character = [[Character alloc] init];
    }
    return self;
}
-(Builder *)buildChar {
    return  self;
}
-(Builder *)buildSTM:(float)value {
    _character.stamina = value;
    return nil;
}
-(Builder *)buildITL:(float)value {
    _character.intellengence = value;
    return  nil;
}
-(Builder *)buildAGI:(float)value {
    _character.agility = value;
    return  nil;
}
-(Builder *)buildAGR:(float)value {
    _character.aggressive = value;
    return  nil;
}
-(Builder *)buildSTR:(float)value {
    _character.strength = value;
    return  nil;
}
@end
