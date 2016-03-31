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

-(AddressBook *) lookup: (NSString *) theName
{
    AddressBook *results = [[AddressBook alloc] initWithName: @"lookup results"];
    
    for ( addressCard *nextCard in book ) {
        if ( [nextCard.Sname rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
            [results addCard: nextCard];
        else if ( [nextCard.Lname rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
            [results addCard: nextCard];
        else if ( [nextCard.email rangeOfString: theName options: NSCaseInsensitiveSearch].location != NSNotFound)
            [results addCard: nextCard];
    }
    
    if (results.book.count == 0)
        return nil;
    
    return results;
}

@end
