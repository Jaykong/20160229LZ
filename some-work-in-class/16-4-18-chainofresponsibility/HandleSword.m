//
//  HandleSword.m
//  16-4-18-chainofresponsibility
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "HandleSword.h"
#import "SwordAttack.h"
@implementation HandleSword
- (void) handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[SwordAttack class]]) {
        NSLog(@"can handle the sword");
    } else {
        [super handleAttack:attack];
    }
}
@end
