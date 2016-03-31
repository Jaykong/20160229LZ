//
//  ViewController.m
//  16-3-29-coredata
//
//  Created by Uno on 2016/3/28.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "SelectedViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource> {
    NSArray *dataArr;
    NSInteger row;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataArr = [NSMutableArray array];
    [Person addWithName:@"One A."andAge:@20];
    [Person addWithName:@"Two B." andAge:@21];
    [Person addWithName:@"Three C."andAge:@20];
    [Person addWithName:@"Four D." andAge:@21];
    dataArr = [Person getPersons];
    
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    Person *p = dataArr[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"NAME:%@ AGE:%@",p.name,p.age];
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UITableViewCell *cell = (UITableViewCell *)sender;
    NSIndexPath *indexPath = [self.tableview indexPathForCell: cell];
    
    SelectedViewController *controller  = segue.destinationViewController;
    Person *p = dataArr[indexPath.row];
    controller.title = p.name;
}
@end
