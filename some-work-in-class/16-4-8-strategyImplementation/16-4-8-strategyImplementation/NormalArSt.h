//
//  NormalArSt.h
//  16-4-8-strategyImplementation
//
//  Created by Uno on 2016/4/8.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ArSt.h"

@interface NormalArSt : ArSt
-(BOOL)validate:(UITextField *)input error:(NSError *__autoreleasing *)error;
@end
