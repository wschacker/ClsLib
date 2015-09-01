//
//  AppConstants.h
//  CardMaster
//
//  Created by Lyner on 13-7-9.
//  Copyright (c) 2013年 GL. All rights reserved.
//
//genstrings -o /Users/zhihuiguan/Documents/ **/*.m
#import <Foundation/Foundation.h>

/** 判断运行环境是否是iPad */
#define IS_PAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


#define ThemeColor UIColorFromRGB(0xca1134)
#define ThemeColorAlpa(a) UIColorFromRGBAlpa(0xca1134,a)
//#define BaseURL @"http://develop.plat-pit-a-pat.com:8107/"
#define BaseURL @"http://54.248.106.63:8107/"
