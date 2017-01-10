//
//  SettingsDataProvider.m
//  SettingsApp
//
//  Created by Christopher Winstanley on 10/01/2017.
//  Copyright © 2017 Winstanley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsDataProvider.h"

@interface SettingsDataProvider()

@property (strong) NSArray *settingsArray;

@end

@implementation SettingsDataProvider

- (instancetype)initWithSettingsArray:(NSArray *)settingsArray;
{
    self = [super init];
    if (self) {
        self.settingsArray = settingsArray;
    }
    return self;
}

- (NSInteger)sectionsAmount{
    return [self.settingsArray count];
}

- (NSInteger)settingsAmountForSection:(NSInteger)section{
    return [[self settingSectionForIndex:section] count];
}

- (Setting *)settingForIndexPath:(NSIndexPath *)indexPath{
    NSArray *settingsSection = [self settingSectionForIndex:[indexPath section]];
    NSDictionary *settingDictionary = [settingsSection objectAtIndex:[indexPath row]];
    return [[Setting alloc] initWithDictionary:settingDictionary];
}

- (NSArray *)settingSectionForIndex:(NSUInteger)section{
    return (NSArray*)[self.settingsArray objectAtIndex:section];
}

@end
