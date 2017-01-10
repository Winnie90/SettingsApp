//
//  Setting.m
//  SettingsApp
//
//  Created by Christopher Winstanley on 10/01/2017.
//  Copyright © 2017 Winstanley. All rights reserved.
//

#import "Setting.h"

@implementation Setting

- (instancetype)initWithDictionary:(NSDictionary *)settingDictionary 
{
    self = [super init];
    if (self) {
        _title = [settingDictionary valueForKey:@"Title"];
        _desc = [settingDictionary valueForKey:@"Description"];
        _type = [[settingDictionary valueForKey:@"Type"] integerValue];
    }
    return self;
}
    
@end
