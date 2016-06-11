//
//  HandleAttack.h
//  16-4-18-chainofresponsibility
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"

@interface HandleAttack : NSObject
@property (nonatomic,strong) HandleAttack *nextResponder;
- (void) handleAttack:(Attack *)attack;
@end
