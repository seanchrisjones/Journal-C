//
//  EntryListTableViewController.m
//  Journal-C
//
//  Created by Caleb Hicks on 12/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import "DMNEntryListTableViewController.h"
#import "DMNEntryDetailViewController.h"
#import "DMNEntryController.h"

@interface DMNEntryListTableViewController ()

@end

@implementation DMNEntryListTableViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [[[DMNEntryController sharedController] entries] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
	
	DMNEntryController *entryController = [DMNEntryController sharedController];
    DMNEntry *entry = entryController.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toViewEntry"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        DMNEntry *entry = [DMNEntryController sharedController].entries[indexPath.row];
        
        DMNEntryDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.entry = entry;
    }
}

@end
