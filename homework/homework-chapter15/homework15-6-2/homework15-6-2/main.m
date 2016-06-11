//
//  main.m
//  homework15-6-2
//
//  Created by Uno on 2016/3/29.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *name1 = @"One";
        NSString *email1 = @"one@uno.com";
        NSString *name2 = @"Two";
        NSString *email2 = @"two@dos.com";
        NSString *name3 = @"Three";
        NSString *email3 = @"three@tre.com";
        NSString *Lname = @"Number";
        int theirPhone = 12345;
        
        addressCard *card1 = [[addressCard alloc]init];
        addressCard *card2 = [[addressCard alloc]init];
        addressCard *card3 = [[addressCard alloc]init];
        
        AddressBook *book1 = [[AddressBook alloc]initWithName:@"AddressBook 1"];
        [card1 setSname:name1 setLname:Lname andEmail:email1 andPhone:theirPhone];
        [card2 setSname:name2 setLname:Lname andEmail:email2 andPhone:theirPhone];
        [card3 setSname:name3 setLname:Lname andEmail:email3 andPhone:theirPhone];
        
        
        NSLog(@"%lu address cards already.",(unsigned long)[book1 entries]);
        
        [book1 addCard:card1];
        [book1 addCard:card2];
        [book1 addCard:card3];
        
        [book1 list];
        NSLog(@"%lu address cards already.",[book1 entries]);
        
        NSLog(@"有没有叫Three的?");
        NSString *card4 = @"Three" ;
        NSArray *checkoutcard4 = [book1 lookup:card4];
        if (checkoutcard4 != nil) {
            for (addressCard *card4 in checkoutcard4 ) {
                [card4 printCard];
            }
        }
        else
            NSLog(@"并没有!");
        
        NSLog(@"有没有叫Four的?");
        NSString *card5 = @"Four" ;
        NSArray *checkoutcard5 = [book1 lookup:card5];
        if (checkoutcard5 != nil) {
            for (addressCard *card5 in checkoutcard5 ) {
                [card5 printCard];
            }
        }
        else
            NSLog(@"并没有!");
        
        NSLog(@"有没有叫Number的?");
        NSString *card6 = @"Number" ;
        NSArray *checkoutcard6 = [book1 lookup:card6];
        if (checkoutcard6 != nil) {
            for (addressCard *card6 in checkoutcard6 ) {
                [card6 printCard];
            }
        }
        else
            NSLog(@"并没有!");
        
    }
    return 0;
}
