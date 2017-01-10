//
//  SettingsDataProvider.h
//  SettingsApp
//
//  Created by Christopher Winstanley on 10/01/2017.
//  Copyright © 2017 Winstanley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Setting.h"

@interface SettingsDataProvider : NSObject

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithSettingsArray:(NSArray *)settingsArray NS_DESIGNATED_INITIALIZER;

- (NSInteger)sectionsAmount;
- (NSInteger)settingsAmountForSection:(NSInteger)section;
- (Setting *)settingForIndexPath:(NSIndexPath *)indexPath;

@end
