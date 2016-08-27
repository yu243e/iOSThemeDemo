//
//  AppMacro.h
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#ifndef AppMacro_h
#define AppMacro_h

#define SCREEN_WIDTH  [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height

#define GetSizeByWidth(w320, w375, w414) [LayoutUtil getUniversalSizeByWidth320:(w320) width375:(w375) width414:(w414)]
#define CustomSize(size) ((size)/375.f)*SCREEN_WIDTH


#endif


