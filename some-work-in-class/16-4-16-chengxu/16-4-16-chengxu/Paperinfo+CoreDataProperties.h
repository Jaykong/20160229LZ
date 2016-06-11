//
//  Paperinfo+CoreDataProperties.h
//  16-4-16-chengxu
//
//  Created by Uno on 2016/4/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Paperinfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Paperinfo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString  *paperid;
@property (nullable, nonatomic, retain) NSString  *name;
@property (nullable, nonatomic, retain) NSString  *type;
@property (nullable, nonatomic, retain) NSNumber  *total;
@property (nullable, nonatomic, retain) NSDate    *addtime;
@property (nullable, nonatomic, retain) Paperinfo *userRecord;

@end

NS_ASSUME_NONNULL_END
