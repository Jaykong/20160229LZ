//
//  HandleAttack.m
//  16-4-18-chainofresponsibility
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "HandleAttack.h"

@implementation HandleAttack
- (void) handleAttack:(Attack *)attack {
    [_nextResponder handleAttack: attack];
}
@end
