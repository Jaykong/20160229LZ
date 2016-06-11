//
//  Wolf.m
//  16-4-20-chainOfResponding
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Wolf.h"
#import "Sheep.h"

@implementation Wolf
-(void) catchAnimal:(Pet *)pet {
    if ([pet isKindOfClass:[Sheep class]]) {
        NSLog(@"Wolf catch Sheep");
    } else {
        [super catchAnimal:pet];
        NSLog(@"Wolf catch fail");
    }
}
@end
