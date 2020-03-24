//
//  SCJEntryDetailViewController.h
//  JournalOBJ-c
//
//  Created by Sean Jones on 3/23/20.
//  Copyright © 2020 Sean Jones. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCJEntryController.h"
#import "SCJEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface SCJEntryDetailViewController : UIViewController

@property SCJEntry * entryLandingPad;
@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;
- (IBAction)saveEntryButtonTapped:(id)sender;
- (IBAction)clearEntryButtonTapped:(id)sender;



@end

NS_ASSUME_NONNULL_END
