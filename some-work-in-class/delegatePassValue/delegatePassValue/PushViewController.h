//
//  PushViewController.h
//  delegatePassValue
//
//  Created by Uno on 2016/3/25.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PushViewControllerDelegate
-(void) sendvalue:(NSString *)message;
@end
@interface PushViewController : UIViewController

@end
@protocol PushViewControllerDelegate
-(void) sendvalue:(NSString *)message;
@end