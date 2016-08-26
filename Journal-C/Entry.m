//
//  Entry.m
//  Journal-C
//
//  Created by Caleb Hicks on 12/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

static NSString * const TitleKey = @"title";
static NSString * const TextKey = @"text";
static NSString * const TimestampKey = @"timestamp";

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text timeStamp:(NSDate *)timestamp
{
	self = [super init];
	if (self) {
		_title = title;
		_text = text;
		_timestamp = timestamp;
	}
	return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	NSString *title = dictionary[TitleKey];
	NSString *text = dictionary[TextKey];
	NSDate *timestamp = dictionary[TimestampKey];
	return [self initWithTitle:title text:text timeStamp:timestamp];
}

- (NSDictionary *)dictionaryRepresentation
{
	return @{TitleKey: self.title,
			 TextKey: self.text,
			 TimestampKey: self.timestamp};
}

- (BOOL)isEqual:(id)object
{
	if (![object isKindOfClass:[Entry class]]) { return NO; }
	// Shortcut to comparing all properties one by one. We let NSDictionary do it for us
	return [[self dictionaryRepresentation] isEqualToDictionary:[(Entry *)object dictionaryRepresentation]];
}

@end
