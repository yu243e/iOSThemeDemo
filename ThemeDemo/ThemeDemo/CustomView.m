//
//  CustomView.m
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#import "CustomView.h"

#import "AppMacro.h"
#import "UIColor+Theme.h"
#import "UIImage+Theme.h"
#import "ThemeManager.h"


@interface CustomView()

@property (nonatomic, strong) UILabel *themeLabel;
@property (nonatomic, strong) UIImageView *themeHeadImageView;
@property (nonatomic, strong) UIImageView *themePureColorImageView;
@property (nonatomic, strong) UIButton *changeThemeButton;

@end

@implementation CustomView

#pragma mark - life cycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.themeLabel];
        [self addSubview:self.themeHeadImageView];
        [self addSubview:self.themePureColorImageView];
        [self addSubview:self.changeThemeButton];
        
        [self setupConstraintsForSubviews];
        
        [self.changeThemeButton addTarget:self action:@selector(changeThemeButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)setupConstraintsForSubviews {
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat margin = CustomSize(20);
    CGFloat padding = 15;
    CGFloat labelHeight = 20;
    CGFloat contentHeight = self.frame.size.height - margin*2;
    CGFloat contentWidth = self.frame.size.width - margin*2;
    CGSize headImageSize = CGSizeMake(120, 120);
    
    self.themeHeadImageView.frame = CGRectMake(margin, margin, headImageSize.width,  headImageSize.height);
    self.themeLabel.frame = CGRectMake(margin, padding + headImageSize.width + margin, headImageSize.width, labelHeight);
     self.themePureColorImageView.frame = CGRectMake(margin + headImageSize.width + padding , margin, contentWidth - padding - headImageSize.width, headImageSize.height + padding + labelHeight);
    self.changeThemeButton.frame = CGRectMake(margin, margin + padding*2 + labelHeight + headImageSize.height, self.frame.size.width - margin*2, contentHeight - self.themePureColorImageView.frame.size.height - padding);
   
}

#pragma mark - public methods
- (void)configureTheme {
    self.backgroundColor = [UIColor colorWithThemedImageNamed:@"color/primary"];
    
    self.themeLabel.text = [[ThemeManager sharedManager] currentThemeName];
    
    self.themeLabel.textColor = [UIColor colorWithThemedImageNamed:@"color/primary_darker"];
    self.themeHeadImageView.image = [UIImage themedImageWithNamed:@"image/head"];
    self.themePureColorImageView.image = [UIImage themedImageWithNamed:@"color/primary_lighter"];
    [self.changeThemeButton setBackgroundImage:[UIImage themedImageWithNamed:@"color/primary_darker"] forState:UIControlStateNormal];
}

#pragma mark - event response
- (void)changeThemeButtonClick {
    [self.delegate changeThemeButtonClick];
}

#pragma mark - getters and setters
- (UILabel *)themeLabel {
    if (!_themeLabel) {
        _themeLabel = [[UILabel alloc]init];
        _themeLabel.adjustsFontSizeToFitWidth = YES;
        _themeLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _themeLabel;
}

- (UIImageView *)themeHeadImageView {
    if (!_themeHeadImageView) {
        _themeHeadImageView = [[UIImageView alloc]init];
        _themeHeadImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _themeHeadImageView;
}

- (UIImageView *)themePureColorImageView {
    if (!_themePureColorImageView) {
        _themePureColorImageView = [[UIImageView alloc]init];
        _themePureColorImageView.contentMode = UIViewContentModeScaleToFill;
    }
    return _themePureColorImageView;
}

- (UIButton *)changeThemeButton {
    if (!_changeThemeButton) {
        _changeThemeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_changeThemeButton setTitle:@"changeTheme" forState:UIControlStateNormal];
    }
    return _changeThemeButton;
}
@end
