//
//  LayoutUtil.m
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#import "LayoutUtil.h"

@implementation LayoutUtil

+ (CGFloat)getUniversalSizeByWidth320:(CGFloat)w320
                             width375:(CGFloat)w375
                             width414:(CGFloat)w414 {
    switch ((NSInteger)(SCREEN_WIDTH + 0.01f)) {
        case 320:
            return w320;
            break;
        case 375:
            return w375;
            break;
        case 414:
            return w414;
            break;
        default:
            //ipad？
            break;
    }
    return 0;
}

@end
