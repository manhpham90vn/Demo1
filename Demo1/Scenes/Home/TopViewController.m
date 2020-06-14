//
//  TopViewController.m
//  Demo1
//
//  Created by Manh Pham on 6/14/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Home";
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [[UIView alloc] init];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"Pass Data";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Screen1ViewController *screen1ViewController = [[Screen1ViewController alloc] initWithNibName:@"Screen1ViewController" bundle:nil];
    [self.navigationController pushViewController:screen1ViewController animated:true];
}

@end
