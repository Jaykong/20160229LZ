//
//  Paperinfo.m
//  16-4-16-chengxu
//
//  Created by Uno on 2016/4/6.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "Paperinfo.h"
#import "PaperinfoRecord.h"
#import "AppDelegate.h"

@implementation Paperinfo
+(Paperinfo *) insertIntoDataBaseWithName:(NSString *)name paperID:(NSString *)paperID type:(NSString *)type total:(int)total andTime:(NSDate *)addTime {
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    Paperinfo * paper = [NSEntityDescription insertNewObjectForEntityForName:@"Paperinfo" inManagedObjectContext:context];
    paper.name = name;
    paper.paperid = paperID;
    paper.type = type;
    paper.total = [NSNumber numberWithInteger:total];
    paper.addtime = addTime;
    return paper;
}
+(NSArray *)findPaper {
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Paperinfo"];
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    NSError *error;
    NSArray *result = [context executeFetchRequest:request error:&error];
    return result;
}


@end
