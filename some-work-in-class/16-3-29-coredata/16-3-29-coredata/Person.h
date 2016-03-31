//
//  Person.h
//  16-3-29-coredata
//
//  Created by Uno on 2016/3/28.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

+(Person *)addWithName:(NSString *)name andAge:(NSNumber *)age;
+(NSArray *)getPersons;
@end

NS_ASSUME_NONNULL_END

#import "Person+CoreDataProperties.h"
