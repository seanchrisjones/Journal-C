//
//  SCJEntryController.h
//  JournalOBJ-c
//
//  Created by Sean Jones on 3/23/20.
//  Copyright © 2020 Sean Jones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCJEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface SCJEntryController : NSObject

@property (nonatomic, strong) NSMutableArray *entries;

+ (SCJEntryController *) shared;

- (void)addEntry: (SCJEntry *) entry;

-(void)removeEntry: (SCJEntry *) entry;

-(void)updateEntry: (SCJEntry *) entry title:(NSString *) title bodyText:(NSString *) bodyText;

@end



NS_ASSUME_NONNULL_END
