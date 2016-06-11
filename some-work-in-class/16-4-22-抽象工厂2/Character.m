//
//  Character.m
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Character.h"

@implementation Character
- (instancetype)init
{
    self = [super init];
    if (self) {
        _stamina = 1.0;
        _intellengence = 1.0;
        _strength = 1.0;
        _agility = 1.0;
        _aggressive = 1.0;
        _power = 1.0;
        _defence = 1.0;
        
    }
    return self;
}
@end
