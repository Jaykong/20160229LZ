//
//  AddressCard.h
//  test16-3-25
//
//  Created by Uno on 2016/3/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#define AddressCardName @"AddressCardName"
#define AddressCardEmail @"AddressCardEmail"
@interface AddressCard : NSObject <NSCoding>

@property NSString *name, *email;
-(void) encodeWithCoder:(NSCoder *)Coder;
@end
