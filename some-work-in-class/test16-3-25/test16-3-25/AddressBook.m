//
//  AddressBook.m
//  test16-3-25
//
//  Created by Uno on 2016/3/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//
#import <objc/runtime.h>
#import "AddressBook.h"
#define AddressCardName @"AddressCardName"
#define AddressCardEmail @"AddressCardEmail"
#define AddressBookName @"AddressBookName"
#define AddressBookCard @"AddressBookCard"

@implementation AddressBook

-(void) encodeWithCoder:(NSCoder *)Coder {
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([AddressBook class], &count);
    for (int i = 0; i < count; ++i) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);
        NSString *key = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
        id obj = [self valueForKey:key];
        NSString *arcName = [NSString stringWithFormat:@"%@%@",[self class],key];
        [Coder encodeObject:obj forKey:arcName];
    }
//    [Coder encodeObject:_bookName forKey:AddressBookName];
//    [Coder encodeObject:_bookCard forKey:AddressBookCard];
}

- (instancetype)initWithCoder:(NSCoder *)Decoder {
    _bookName = [Decoder decodeObjectForKey:AddressBookName];
    _bookCard = [Decoder decodeObjectForKey:AddressBookCard];
    return self;
}
@end
