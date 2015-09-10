//
//  NSUserDefaults+Addition.h
//  BytalkApp
//
//  Created by wangjianglei on 13-3-18.
//  Copyright (c) 2013年 zhihuiguan. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, LoginType) {
    App = 100,
    FB,
    TW
};

@interface NSUserDefaults (Addition)

@property (strong, nonatomic) NSString *password;

@property(strong, nonatomic) NSString* userID;

@property (strong, nonatomic) NSString *divicetoken;

@property (strong, nonatomic) NSString *userName;

@property (strong, nonatomic)NSString *loginId;

@property (strong, nonatomic)NSString *token;

@property (assign, nonatomic)BOOL isHaveSound;

@property (assign, nonatomic)BOOL everLaunched;

@property (assign, nonatomic)BOOL firstLaunched;

@property (strong, nonatomic) NSString *userInputName;

@property (assign, nonatomic) LoginType loginType;

@property (strong, nonatomic) NSString *appId;

@property (strong, nonatomic) NSString *cityId;

@end
inline NSUserDefaults *  UserDefaults()
{
    return [NSUserDefaults standardUserDefaults];
}

inline NSString *  loginID()
{
    return [UserDefaults() loginId];
}
inline NSString *  userID()
{
    return [UserDefaults() userID];
}

inline NSString *  userName()
{
    return [UserDefaults() userInputName];
}
inline NSString *  token()
{
    return [UserDefaults() token];
}
inline void setToken(NSString *token)
{
    [UserDefaults() setToken:token];
}
inline BOOL isLogin()
{
    
    if ([UserDefaults() loginType] == App||[UserDefaults() loginType] == FB||[UserDefaults() loginType] == TW) {
        return YES;
    }else{
        return NO;
    }
}