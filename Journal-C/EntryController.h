//
//  EntryController.h
//  Journal-C
//
//  Created by Caleb Hicks on 12/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

+ (EntryController *)sharedController;

- (void)saveToPersistentStorage;

@property (nonatomic, strong, readonly) NSArray *entries;
- (void)addEntriesObject:(Entry *)entry;
- (void)removeEntriesObject:(Entry *)entry;

@end
