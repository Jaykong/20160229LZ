//
//  AddressBook.h
//  homework15-6-2
//
//  Created by Uno on 2016/3/29.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "addressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *)name;
-(void) addCard :(addressCard *) thecard;
-(NSUInteger) entries;
-(void) list;

-(AddressBook *) lookup: (NSString *) theName;

@end
