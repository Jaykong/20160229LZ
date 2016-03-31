//
//  PushvViewController.m
//  16-3-30-blockorsomething
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "PushvViewController.h"

@interface PushvViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation PushvViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    _passValueBlock(_textView.text);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
