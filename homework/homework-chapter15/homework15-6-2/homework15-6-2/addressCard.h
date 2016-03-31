//
//  addressCard.h
//  homework15-6-2
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface addressCard : NSObject
-(void) setSname: (NSString *)thesName setLname: (NSString *)thelName andEmail:(NSString *) theEmail andPhone: (NSInteger)phoneNum;
-(NSString *) Sname;
-(NSString *) email;
-(NSString *) Lname;
-(NSInteger) phone;
-(void) printCard;
@end
