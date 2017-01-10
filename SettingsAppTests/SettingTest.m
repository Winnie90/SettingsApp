//
//  SettingTest.m
//  SettingsApp
//
//  Created by Christopher Winstanley on 10/01/2017.
//  Copyright © 2017 Winstanley. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Setting.h"

@interface SettingTest : XCTestCase

@property (strong) Setting *setting;

@end

@implementation SettingTest

- (void)setUp{
    NSDictionary *settingDictionary =[[NSDictionary alloc] initWithObjects:@[@"AutoPlay", @"Enable AutoPlay", @0] forKeys:@[@"Title", @"Description", @"Type"]];
     self.setting = [[Setting alloc] initWithDictionary:settingDictionary];
}

- (void)testTitle {
    XCTAssertEqual(@"AutoPlay", self.setting.title);
}

- (void)testDescription {
    XCTAssertEqual(@"Enable AutoPlay", self.setting.desc);
}

- (void)testToggleType {
    XCTAssertEqual(SettingToggle, self.setting.type);
}

- (void)testLinkType {
    NSDictionary *settingDictionary =[[NSDictionary alloc] initWithObjects:@[@"AutoPlay", @"Enable AutoPlay", @1] forKeys:@[@"Title", @"Description", @"Type"]];
    self.setting = [[Setting alloc] initWithDictionary:settingDictionary];
    XCTAssertEqual(SettingURL, self.setting.type);
}

@end
