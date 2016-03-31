//
//  PushvViewController.h
//  16-3-30-blockorsomething
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
typedef void (^Block)(NSString *);
@interface PushvViewController : ViewController
@property (nonatomic,strong) Block passValueBlock;
@end
