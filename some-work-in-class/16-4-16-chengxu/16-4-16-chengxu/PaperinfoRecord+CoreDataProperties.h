//
//  PaperinfoRecord+CoreDataProperties.h
//  16-4-16-chengxu
//
//  Created by Uno on 2016/4/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "PaperinfoRecord.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaperinfoRecord (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *paperid;
@property (nullable, nonatomic, retain) NSNumber *answered;
@property (nullable, nonatomic, retain) PaperinfoRecord *paperInfo;

@end

NS_ASSUME_NONNULL_END
