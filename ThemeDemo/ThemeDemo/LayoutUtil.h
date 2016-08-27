//
//  LayoutUtil.h
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppMacro.h"

@interface LayoutUtil : NSObject

//根据不同机型5 6 6p的屏幕宽度，返回CGFloat
+ (CGFloat)getUniversalSizeByWidth320:(CGFloat)w320 width375:(CGFloat)w375 width414:(CGFloat)w414;

@end