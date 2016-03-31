//
//  Person.m
//  16-3-29-coredata
//
//  Created by Uno on 2016/3/28.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Person.h"
#import "AppDelegate.h"

@implementation Person


+(Person *)addWithName:(NSString *)name andAge:(NSNumber *)age {
    AppDelegate *appDelegate =  [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    Person *person = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:context];
    person.name = name;
    person.age = age;
    return person;
}
+(NSArray *)getPersons {
    AppDelegate *appDelegate =  [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName: @"Person"];
    NSError *error;
    NSArray *arr = [context executeFetchRequest:request error:&error];
    NSLog(@"%@",error);
    return arr;
}

@end
