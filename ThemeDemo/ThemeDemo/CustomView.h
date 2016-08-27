//
//  CustomView.h
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

@required
- (void)changeThemeButtonClick;

@end

@interface CustomView : UIView

@property (nonatomic, weak) id<CustomViewDelegate> delegate;
- (void)configureTheme;

@end
