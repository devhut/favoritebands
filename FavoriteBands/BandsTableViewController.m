//  BandsTableViewController.m
//  FavoriteBands
//  Created by Dan Lopez on 3/3/15.
//  Copyright (c) 2015 DevHut. All rights reserved.

#import "BandsTableViewController.h"

@interface BandsTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation BandsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *headerViewNib = [UINib nibWithNibName:@"CustomHeaderView" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:headerViewNib forHeaderFooterViewReuseIdentifier:@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *allBands = [self.allBands allKeys];
    return allBands.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *allBands = [self.allBands allKeys];
    return allBands[section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *allBands = [self.allBands allKeys];
    NSString *bandKey = allBands[section];
    NSDictionary *aBand = self.allBands[bandKey];
    NSArray *bandMembers = aBand[@"members"];
    return bandMembers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"BandsCell"
                                                            forIndexPath:indexPath];
    
    NSArray *allBands = [self.allBands allKeys];
    NSString *bandKey = allBands[indexPath.section];
    NSDictionary *aBand = self.allBands[bandKey];
    NSArray *bandMembers = aBand[@"members"];
    //UIImage *bandLogo = aBand[@"photo"];
    
    cell.textLabel.text = bandMembers[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 60;
}
/*
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
 
    return nil;
}
*/

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
