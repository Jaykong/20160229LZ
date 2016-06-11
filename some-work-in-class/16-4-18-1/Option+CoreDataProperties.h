//
//  Option+CoreDataProperties.h
//  16-4-18-1
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Option.h"

NS_ASSUME_NONNULL_BEGIN

@interface Option (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) Question *question;

@end

NS_ASSUME_NONNULL_END
