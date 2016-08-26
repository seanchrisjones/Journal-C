//
//  Entry.h
//  Journal-C
//
//  Created by Caleb Hicks on 12/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMNEntry : NSObject

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text timeStamp:(NSDate *)timestamp;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionaryRepresentation;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *timestamp;

@end
