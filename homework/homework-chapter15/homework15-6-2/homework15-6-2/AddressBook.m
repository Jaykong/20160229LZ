//
//  AddressBook.m
//  homework15-6-2
//
//  Created by Uno on 2016/3/29.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

-(instancetype) initWithName: (NSString *)name {
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype)init {
    return [self initWithName:@"noName"];
}

-(void) addCard :(addressCard *) thecard {
    [book addObject: thecard];
}

-(NSUInteger) entries {
    return [book count];
}

-(void) list {
    NSLog(@"Contents of %@", bookName);
    for (addressCard *thecard in book) NSLog(@"%@ %@, 📞%li  %@",thecard.Sname,thecard.Lname,thecard.phone,thecard.email);
}

-(NSArray *) lookup : (NSString *) aName {
    __block NSRange range;
    NSIndexSet *result = [book indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop)
                          {
                              range = [[obj Sname] rangeOfString:aName];
                              if (range.location != NSNotFound) return YES;
                              else return 0;
                          }];
    if ([result count] != 0)  {
        NSArray *myArray = [book objectsAtIndexes:result];
        return myArray ;  
    }  
    else return nil;
}

@end
