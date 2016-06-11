//
//  Animal.h
//  16-4-20-chainOfResponding
//
//  Created by Uno on 2016/4/20.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pet.h"

@interface Animal : NSObject
@property (nonatomic,strong) Animal *animal;
-(void) catchAnimal:(Pet *)pet;
@end
