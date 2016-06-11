//
//  Director.m
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Director.h"

@implementation Director
- (instancetype)init
{
    self = [super init];
    if (self) {
        _character = [[Character alloc] init];
    }
    return self;
}
+(Character *)enemy {
    Character *enemyChar = [[Character alloc] init];
    enemyChar.stamina = 10;
    enemyChar.intellengence = 20;
    enemyChar.agility = 44;
    enemyChar.aggressive = 100;
    enemyChar.strength = 20;
    return enemyChar;
}
+(Character *)player {
    Character *playerChar = [[Character alloc] init];
    playerChar.stamina = 10;
    playerChar.intellengence = 20;
    playerChar.agility = 50;
    playerChar.aggressive = 20;
    playerChar.strength = 20;
    return playerChar;
}
@end
