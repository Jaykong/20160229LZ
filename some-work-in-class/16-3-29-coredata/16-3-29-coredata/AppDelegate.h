//
//  AppDelegate.h
//  16-3-29-coredata
//
//  Created by Uno on 2016/3/28.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//主要使用的操作存储数据的暂存区
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
//xcdaramodeld形式存在, 加载内存.mmod
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
//NSpersistancestore 连接store(固化存储区)和model、context、创建好这个对象基本不用

- (void)saveContext;    //把暂存区转移到固化区(store)
- (NSURL *)applicationDocumentsDirectory;//沙盒机制: 只能动沙盒里面的文件


@end

