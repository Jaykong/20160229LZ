//
//  HandleMagic.m
//  16-4-18-chainofresponsibility
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "HandleMagic.h"
#import "MagicAttack.h"

@implementation HandleMagic
- (void) handleAttack:(Attack *)attack {
    if ([attack isKindOfClass: [MagicAttack class]]) {
        NSLog(@"can handle the magic");
    } else {
        [super handleAttack:attack];
    }
}
@end
