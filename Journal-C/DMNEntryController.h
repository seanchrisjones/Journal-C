//
//  EntryController.h
//  Journal-C
//
//  Created by Caleb Hicks on 12/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMNEntry.h"

@interface DMNEntryController : NSObject

+ (DMNEntryController *)sharedController;

- (void)saveToPersistentStorage;

@property (nonatomic, strong, readonly) NSArray *entries;
- (void)addEntriesObject:(DMNEntry *)entry;
- (void)removeEntriesObject:(DMNEntry *)entry;

@end
