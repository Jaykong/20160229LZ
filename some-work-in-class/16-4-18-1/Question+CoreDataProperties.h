//
//  Question+CoreDataProperties.h
//  16-4-18-1
//
//  Created by Uno on 2016/4/18.
//  Copyright © 2016年 BrookZero. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface Question (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *qid;
@property (nullable, nonatomic, retain) NSString *headingid;
@property (nullable, nonatomic, retain) NSNumber *sort;
@property (nullable, nonatomic, retain) NSNumber *type;
@property (nullable, nonatomic, retain) NSNumber *score;
@property (nullable, nonatomic, retain) NSString *options;
@property (nullable, nonatomic, retain) NSString *answer;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *parse;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *option;

@end

@interface Question (CoreDataGeneratedAccessors)

- (void)addOptionObject:(NSManagedObject *)value;
- (void)removeOptionObject:(NSManagedObject *)value;
- (void)addOption:(NSSet<NSManagedObject *> *)values;
- (void)removeOption:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
