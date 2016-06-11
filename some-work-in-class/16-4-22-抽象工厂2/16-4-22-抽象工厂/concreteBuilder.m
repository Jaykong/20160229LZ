//
//  concreteBuilder.m
//  16-4-22-抽象工厂
//
//  Created by Uno on 2016/4/22.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "concreteBuilder.h"

@implementation concreteBuilder
-(Builder *) buildChar {
    return self;
}
-(Builder *)buildSTM:(float)value {
    self.character.power *= value;
    self.character.defence *= value;
    [super buildSTM:value];
    return self;
}
-(Builder *)buildAGI:(float)value  {
    self.character.power /= value;
    self.character.defence *= value;
    [super buildAGI:value];
    return self;
}
-(Builder *)buildITL:(float)value  {
    self.character.power /= value;
    self.character.defence *= value;
    [super buildITL:value];
    return self;
}
-(Builder *)buildSTR:(float)value  {
    self.character.power *= value;
    self.character.defence *= value;
    [super buildSTR:value];
    return self;
}
-(Builder *)buildAGR:(float)value  {
    self.character.power *= value;
    self.character.defence /= value;
    [super buildAGR:value];
    return self;
}
@end
