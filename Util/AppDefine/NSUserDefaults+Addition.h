//
//  NSUserDefaults+Addition.h
//  BytalkApp
//
//  Created by wangjianglei on 13-3-18.
//  Copyright (c) 2013年 zhihuiguan. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, LoginType) {
    LOGINTYPE_EMAIL,
    LOGINTYPE_PHONE,
    LOGINTYPE_PHONE_ET,
};

@interface NSUserDefaults (Addition)

@property (strong, nonatomic) NSString *password;

@property(strong, nonatomic) NSString* userID;

@property (strong, nonatomic) NSString *devicetoken;

@property (strong, nonatomic) NSString *userName;

@property (strong, nonatomic)NSString *loginId;

@property (strong, nonatomic)NSString *token;

@property (assign, nonatomic)BOOL isHaveSound;

@property (assign, nonatomic)BOOL everLaunched;

@property (assign, nonatomic)BOOL firstLaunched;

@property (strong, nonatomic) NSString *userInputName;

@property (assign, nonatomic) LoginType loginType;

@property (strong, nonatomic) NSString *cityCd;

@property (strong, nonatomic) NSString *cCode;

@property (strong,nonatomic) NSString *email;
@end
