//
//  ViewController.m
//  16-3-30-blockorsomething
//
//  Created by Uno on 2016/3/30.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "PushvViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PushvViewController *pushViewController = segue.destinationViewController;
    pushViewController.passValueBlock = ^(NSString *text) {
        _textLabel.text = text;
    };
}
@end
