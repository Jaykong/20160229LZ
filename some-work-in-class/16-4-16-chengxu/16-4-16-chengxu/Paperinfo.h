//
//  Paperinfo.h
//  16-4-16-chengxu
//
//  Created by Uno on 2016/4/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN
@class PaperinfoRecord;
@interface Paperinfo : NSManagedObject

+(Paperinfo *) insertIntoDataBaseWithName:(NSString *)name paperID:(NSString *)paperID type:(NSString *)type total:(int)total andTime:(NSDate *)addTime;
+(NSArray *)findPaper;
@end

NS_ASSUME_NONNULL_END

#import "Paperinfo+CoreDataProperties.h"
