//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Caleb Hicks on 12/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"

@interface EntryDetailViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *titleTextField;
@property (nonatomic, weak) IBOutlet UITextView *textTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	[self updateViews];
}

- (void)updateViews
{
	if (!self.entry) return;
	
	self.titleTextField.text = self.entry.title;
	self.textTextView.text = self.entry.text;
}

#pragma mark - Actions

- (IBAction)saveButtonTapped:(id)sender
{
	if (self.entry) {
		
		self.entry.title = self.titleTextField.text;
		self.entry.text = self.textTextView.text;
		self.entry.timestamp = [NSDate date];
		
	} else {
		
		Entry *entry = [[Entry alloc] initWithTitle:self.titleTextField.text text:self.textTextView.text timeStamp:[NSDate date]];
		
		[[EntryController sharedController] addEntriesObject:entry];
		
		self.entry = entry;
	}
	
	[self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(id)sender
{
	self.titleTextField.text = @"";
	self.textTextView.text = @"";
}

#pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}

#pragma mark - Properties

- (void)setEntry:(Entry *)entry
{
	if (entry != _entry) {
		_entry = entry;
		[self updateViews];
	}
}

@end
