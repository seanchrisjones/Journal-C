//
//  SCJEntry.m
//  JournalOBJ-c
//
//  Created by Sean Jones on 3/23/20.
//  Copyright © 2020 Sean Jones. All rights reserved.
//

#import "SCJEntry.h"

@implementation SCJEntry

- (instancetype)initWithTitle:(NSString *) title bodyText:(NSString *)bodyText timeStamp:(NSDate *)timeStamp
{
    self = [super init];
    if(self){
        _title = title;
        _bodyText = bodyText;
        if (timeStamp){
            _timeStamp = timeStamp;
        }
        else{
            _timeStamp = [NSDate alloc];
        }
        
    }
    return self;
    
}



@end
