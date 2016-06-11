//
//  customtextfield.m
//  16-4-8-strategyImplementation
//
//  Created by Uno on 2016/4/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "customtextfield.h"
#import "ArSt.h"
@interface customtextfield()
@property (nonatomic,strong) IBOutlet ArSt * st1;
@end
@implementation customtextfield

-(BOOL)validate {
    return [_st1 validate:self error:nil];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
