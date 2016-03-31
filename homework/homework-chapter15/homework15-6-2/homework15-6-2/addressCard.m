//
//  addressCard.m
//  homework15-6-2
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "addressCard.h"

@implementation addressCard {
    NSString * Sname;
    NSString * email;
    NSString * Lname;
    NSInteger phone;
}
-(void) setSname: (NSString *)thesName setLname: (NSString *)thelName andEmail:(NSString *) theEmail andPhone: (NSInteger)phoneNum {
    Sname = [NSString stringWithString: thesName];
    Lname = [NSString stringWithString: thelName];
    email = [NSString stringWithString: theEmail];
    phone = (NSInteger) phoneNum;
}
-(NSString *) Sname {
    return Sname;
}
-(NSString *) email {
    return email;
}
-(NSString *) Lname {
    return Lname;
}
-(NSInteger) phone {
    return phone;
}
-(void) printCard{
    NSLog(@"test");
}
@end
