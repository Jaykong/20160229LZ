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
+(Character *)enemy:(Builder *)builder {
    [builder buildChar];
    [builder buildSTM:10];
    [builder buildITL:20];
    [builder buildAGI:50];
    [builder buildAGR:100];
    [builder buildSTR:20];
    return builder.character;
}
+(Character *)player:(Builder *)builder {
    Character *playerChar = [[Character alloc] init];
    playerChar.stamina = 10;
    playerChar.intellengence = 20;
    playerChar.agility = 50;
    playerChar.aggressive = 20;
    playerChar.strength = 20;
    return playerChar;
}
@end
