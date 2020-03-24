//
//  SCJEntryDetailViewController.m
//  JournalOBJ-c
//
//  Created by Sean Jones on 3/23/20.
//  Copyright © 2020 Sean Jones. All rights reserved.
//

#import "SCJEntryDetailViewController.h"
#import "SCJEntryController.h"
#import "SCJEntry.h"

@interface SCJEntryDetailViewController ()

@end

@implementation SCJEntryDetailViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.entryLandingPad){
        self.entryTitleTextField.text = self.entryLandingPad.title;
        self.entryBodyTextView.text = self.entryLandingPad.bodyText;
    }
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  
}




- (IBAction)saveEntryButtonTapped:(id)sender {
    NSString *title = self.entryTitleTextField.text;
    NSString *bodyText = self.entryBodyTextView.text;
    
    if(self.entryLandingPad){
        SCJEntry *entry = self.entryLandingPad;
        entry.title = title;
        entry.bodyText = bodyText;
        entry.timeStamp = [NSDate new];
        [SCJEntryController.shared updateEntry:entry title:title bodyText:bodyText];
    }
    else{
        
        
        SCJEntry *entry = [[SCJEntry alloc] initWithTitle:title bodyText:bodyText timeStamp:[NSDate new]];
        [SCJEntryController.shared addEntry: entry];
    }
    
}

- (IBAction)clearEntryButtonTapped:(id)sender {
    self.entryTitleTextField.text = @"";
    self.entryBodyTextView.text = @"";
}
@end
