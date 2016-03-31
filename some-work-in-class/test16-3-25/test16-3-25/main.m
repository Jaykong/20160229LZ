//
//  main.m
//  test16-3-25
//
//  Created by Uno on 2016/3/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

void archiveSomeProperties() {
    AddressCard *card999 = [[AddressCard alloc]init];
    card999.name = @"One";
    card999.email = @"One@mail.com";
    NSMutableData *data1 = [NSMutableData data];
    NSKeyedArchiver *arc1 = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data1];
    [arc1 encodeObject:card999.name forKey:AddressCardName];
    [arc1 finishEncoding];
    
    [data1 writeToFile:@"namecard1" options:0 error:nil];
}

void readArcProperties() {
    NSData *data2 = [NSData dataWithContentsOfFile:@"namecard1" options:0 error:nil];
    NSKeyedUnarchiver *unarc = [[NSKeyedUnarchiver alloc] initForReadingWithData:data2];
    NSString *str1 = [unarc decodeObjectForKey:AddressCardName];
    NSLog(@"%@",str1);
    [unarc finishDecoding];
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        AddressCard *card1 = [[AddressCard alloc]init];
        card1.name = @"Zero";
        card1.email = @"zero@mail.com";
        [NSKeyedArchiver archiveRootObject:card1 toFile:@"card1"];
        AddressCard *card2 = [NSKeyedUnarchiver unarchiveObjectWithFile:@"card1"];
        
        NSDictionary *dic1 = @{@"Uno":@10, @"Dos":@20, @"Tre":@30};
        [dic1 writeToFile:@"Person" atomically:YES];
        [NSKeyedArchiver archiveRootObject: dic1 toFile:@"Person.Archive"];
        [NSKeyedUnarchiver unarchiveObjectWithFile:@"Person.Archive"];
        
        NSData *cardData = [NSKeyedArchiver archivedDataWithRootObject:card1];
        AddressCard *copyCard = [NSKeyedUnarchiver unarchiveObjectWithData: cardData];
        
        AddressCard *assignCard = card1;
        
        AddressBook *book1 = [[AddressBook alloc]init];
        book1.bookName = assignCard.name;
        book1.bookCard = assignCard.email;
        
        archiveSomeProperties();
        readArcProperties();
    }
    return 0;
}
