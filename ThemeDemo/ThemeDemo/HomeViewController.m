//
//  HomeViewController.m
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#import "HomeViewController.h"

#import "AppMacro.h"
#import "UIColor+Theme.h"
#import "ThemeManager.h"
#import "Masonry.h"

@interface HomeViewController ()

@property (nonatomic, strong) CustomView *customView;
@end

@implementation HomeViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ThemeDemo by yu243e";
    
    [self.view addSubview:self.customView];
    [[ThemeManager sharedManager] configureThemeWithNamed:@"boy"];
    
    [self setupConstraintsForSubviews];
    [self configureTheme];
}

- (void)setupConstraintsForSubviews {
    __weak __typeof(self)weakSelf = self;
    
    [self.customView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.view.mas_left).offset(15);
        make.right.equalTo(weakSelf.view.mas_right).offset(-15);
        make.centerY.equalTo(weakSelf.view.mas_centerY);
        make.height.mas_equalTo(CustomSize(300));
    }];
}

- (void)configureTheme {
    self.view.backgroundColor = [UIColor colorWithThemedImageNamed:@"color/primary_lighter"];
    [self.customView configureTheme];
}

#pragma mark - CustomViewDelegate
- (void)changeThemeButtonClick {
    if ([[[ThemeManager sharedManager] currentThemeName] isEqualToString:@"girl"]) {
        [[ThemeManager sharedManager] configureThemeWithNamed:@"boy"];
    } else {
        [[ThemeManager sharedManager] configureThemeWithNamed:@"girl"];
    }
    [self configureTheme];
}

#pragma mark - getters and setters
- (CustomView *)customView {
    if (!_customView) {
        _customView = [[CustomView alloc]init];
        _customView.delegate = self;
    }
    return _customView;
}
@end
