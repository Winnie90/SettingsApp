//
//  Setting.h
//  SettingsApp
//
//  Created by Christopher Winstanley on 10/01/2017.
//  Copyright © 2017 Winstanley. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SettingType) {
    SettingToggle,
    SettingURL,
    SettingOther
};

@interface Setting : NSObject

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithDictionary:(NSDictionary *)settingDictionary NS_DESIGNATED_INITIALIZER;

@property (readonly, strong) NSString *title;
@property (readonly, strong) NSString *desc;
@property (readonly) SettingType type;

@end
