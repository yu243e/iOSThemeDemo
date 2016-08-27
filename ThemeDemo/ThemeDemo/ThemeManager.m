//
//  ThemeManager.m
//  ThemeDemo
//
//  Created by yu243e on 16/8/25.
//  Copyright © 2016年 Woodseen. All rights reserved.
//
#import "ThemeManager.h"

@interface ThemeManager()

@property (nonatomic, copy) NSString *themeName;

@end

@implementation ThemeManager

+ (ThemeManager *)sharedManager {
    static ThemeManager *_themeManager;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _themeManager = [[ThemeManager alloc]init];
    });
    
    return _themeManager;
}

- (BOOL)configureThemeWithNamed:(NSString *)name {
    if ([self.themeName isEqualToString:name]) {
        return NO;
    } else {
        self.themeName = name;
        return YES;
    }
}

- (NSString *)currentThemeName {
    return self.themeName;
}
@end
