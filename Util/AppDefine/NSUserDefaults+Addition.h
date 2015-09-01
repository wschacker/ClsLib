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

@property (strong, getter=password,
           setter=setPassword:) NSString *password;


@property(strong, getter=platUserID,
          setter=setPlatUserID:) NSString* platUserID;
@property (strong, getter=divicetoken,
           setter=setDivicetoken:) NSString *divicetoken;

 @property (strong, getter=userName,
           setter=setUserName:) NSString *userName;

@property (strong, getter=loginid,
           setter=setLoginID:)NSString *loginid;

@property (strong, getter=platIDToken,
           setter=setPlatIDToken:)NSString *PlatIDToken;
@property (assign, getter=isHaveSound,
           setter=setIsHaveSound:)BOOL setIsHaveSound;

@property (assign, getter=everLaunched,
           setter=setEverLaunched:)BOOL setEverLaunched;
@property (assign, getter=firstLaunched,
           setter=setFirstLaunched:)BOOL setFirstLaunched;

@property (strong, getter=userInputName,
           setter=setUserInputName:) NSString *userInputName;

@property (assign, getter=MainCategoryVer,
           setter=setMainCategoryVer:) float MainCategoryVer;

@property (assign, getter=loginType,
           setter=setLoginType:) LoginType loginType;

@end
inline NSUserDefaults *  UserDefaults()
{
    return [NSUserDefaults standardUserDefaults];
}

inline NSString *  loginID()
{
    return [UserDefaults() loginid];
}
inline NSString *  platUserID()
{
    return [UserDefaults() platUserID];
}

inline NSString *  userName()
{
    return [UserDefaults() userInputName];
}
inline NSString *  platIDToken()
{
    return [UserDefaults() platIDToken];
}
inline void setPlatIDToken(NSString *token)
{
    [UserDefaults() setPlatIDToken:token];
}
inline BOOL isLogin()
{
    
    if ([UserDefaults() loginType] == App||[UserDefaults() loginType] == FB||[UserDefaults() loginType] == TW) {
        return YES;
    }else{
        return NO;
    }
}