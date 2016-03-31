//
//  AddressCard.m
//  test16-3-25
//
//  Created by Uno on 2016/3/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "AddressCard.h"
#define AddressCardName @"AddressCardName"
#define AddressCardEmail @"AddressCardEmail"

@implementation AddressCard

-(void) encodeWithCoder:(NSCoder *)Coder {
    [Coder encodeObject:_name forKey:AddressCardName];
    [Coder encodeObject:_email forKey:AddressCardEmail];
}

- (instancetype)initWithCoder:(NSCoder *)Decoder {
    _name = [Decoder decodeObjectForKey:AddressCardName];
    _email = [Decoder decodeObjectForKey:AddressCardEmail];
    return self;
}
@end
