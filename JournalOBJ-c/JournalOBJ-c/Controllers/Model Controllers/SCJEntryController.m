//
//  SCJEntryController.m
//  JournalOBJ-c
//
//  Created by Sean Jones on 3/23/20.
//  Copyright © 2020 Sean Jones. All rights reserved.
//

#import "SCJEntryController.h"
#import "SCJEntry.h"


@implementation SCJEntryController

+(SCJEntryController *) shared{
    static SCJEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once( &onceToken, ^{ shared = [SCJEntryController new];
        
    });
    return shared;
    
}



- (void)addEntry:(SCJEntry *)entry
{
    
    [self.entries addObject: entry];
    
}

-(void)removeEntry:(SCJEntry *)entry
{
    [self.entries removeObject: entry];
}

- (void)updateEntry:(SCJEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timeStamp = [NSDate new];
    
}

@end
