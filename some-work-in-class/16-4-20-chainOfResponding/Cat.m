//
//  Cat.m
//  16-4-20-chainOfResponding
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Cat.h"
#import "Mouse.h"

@implementation Cat
-(void) catchAnimal:(Pet *)pet {
    if ([pet isKindOfClass:[Mouse class]]) {
        NSLog(@"Cat catch mouse");
    } else {
        [super catchAnimal:pet];
        NSLog(@"Cat catch fail");
    }
}
@end
