//
//  SCJEntriesTableViewController.m
//  JournalOBJ-c
//
//  Created by Sean Jones on 3/23/20.
//  Copyright © 2020 Sean Jones. All rights reserved.
//

#import "SCJEntriesTableViewController.h"
#import "SCJEntryController.h"
#import "SCJEntry.h"

@interface SCJEntriesTableViewController ()

@end

@implementation SCJEntriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
 
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return SCJEntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    SCJEntry *entry = SCJEntryController.shared.entries[indexPath.row];
    cell.detailTextLabel.text = entry.timeStamp;
    cell.textLabel.text = entry.title;
    
    
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
