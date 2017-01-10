//
//  SettingsDataProviderTest.m
//  SettingsApp
//
//  Created by Christopher Winstanley on 10/01/2017.
//  Copyright © 2017 Winstanley. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SettingsDataProvider.h"
#import "Setting.h"

@interface SettingsDataProviderTest : XCTestCase

@property (strong) SettingsDataProvider *settingsDataProvider;

@end

@implementation SettingsDataProviderTest

- (void)setUp {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"Settings" ofType:@"plist"];
    NSArray *testSettingsArray = [[NSArray alloc] initWithContentsOfFile:path];
    self.settingsDataProvider = [[SettingsDataProvider alloc] initWithSettingsArray:testSettingsArray];
}

- (void)testCorrectNumberOfSettingSectionsAreReturned {
    XCTAssertEqual(2, [self.settingsDataProvider sectionsAmount]);
}

- (void)testCorrectNumberOfSettingsInSection {
    NSInteger sectionIndex = 0;
    XCTAssertEqual(1, [self.settingsDataProvider settingsAmountForSection:sectionIndex]);
    sectionIndex = 1;
    XCTAssertEqual(3, [self.settingsDataProvider settingsAmountForSection:sectionIndex]);
}

- (void)testSettingObjectReturnedFromDataProvider {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    XCTAssertTrue([[self.settingsDataProvider settingForIndexPath:indexPath] isKindOfClass: [Setting class]]);
}

- (void)testAutoPlayTitleReturnedFromDataProvider {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    XCTAssertEqualObjects(@"Auto Play", (Setting *)[self.settingsDataProvider settingForIndexPath:indexPath].title);
}

@end
