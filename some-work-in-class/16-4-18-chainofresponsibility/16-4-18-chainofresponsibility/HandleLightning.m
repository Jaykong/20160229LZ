//
//  HandleLightning.m
//  16-4-18-chainofresponsibility
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "HandleLightning.h"
#import "LightningAttack.h"

@implementation HandleLightning
- (void) handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[LightningAttack class]]) {
        NSLog(@"can handle the lightning");
    } else {
        [super handleAttack:attack];
    }
}
@end
