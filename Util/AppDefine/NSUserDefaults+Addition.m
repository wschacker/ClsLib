//
//  NSUserDefaults+Addition.m
//  BytalkApp
//
//  Created by zhihuiguan on 13-3-18.
//  Copyright (c) 2013年 zhihuiguan. All rights reserved.
//

#import "NSUserDefaults+Addition.h"


NSString *const APPDefaultsKeyUserName=@"userName";
NSString *const APPDefaultsKeyLoginUser=@"LoginUser";

NSString *const APPDefaultsKeyLoginID=@"loginid";
NSString *const APPDefaultsKeyPassword = @"password";
NSString *const APPDefaultsKeyUserInputName=@"userInputName";
NSString *const APPDefaultsKeyURL=@"url";
NSString *const APPMainCategoryVer=@"MainCategoryVer";

NSString *const APPDefaultsKeyDeviceToken = @"divicetoken";
NSString *const APPDefaultsKeyDataHolder = @"dataHolder";
NSString *const APPDefaultsKeyPlatiUserId = @"PlatiUserId";

NSString *const APPDefaultsKeyPlatIDToken=@"platIDToken";
NSString *const APPDefaultsKeyIsHaveSound=@"isHaveSound";
NSString *const APPDefaultsKeyEverLaunched=@"everLaunched";
NSString *const APPDefaultsKeyFirstLaunched=@"firstLaunched";

@implementation NSUserDefaults (Addition)

- (NSString *)userName{
   return [self stringForKey:APPDefaultsKeyUserName];
}
- (void)setUserName:(NSString *)userName{
    [self setObject:userName forKey:APPDefaultsKeyUserName];
}
- (NSString *)password {
    return [self stringForKey:APPDefaultsKeyPassword];
}

- (void)setPassword:(NSString *)password {
    [self setObject:password forKey:APPDefaultsKeyPassword];
}

-(void)setLoginID:(NSString *)loginid{
    [self setObject:loginid forKey:APPDefaultsKeyLoginID];
}

//-(LoginUser *)loginUser{
//    return [self objectForKey:APPDefaultsKeyLoginUser];
//}
//
//-(void)setLoginUser:(LoginUser *)loginUser{
//    [self setObject:loginUser forKey:APPDefaultsKeyLoginUser];
//}

-(NSString *)loginid{
    return [self stringForKey:APPDefaultsKeyLoginID];
}

- (NSString *)divicetoken {
    return [self stringForKey:APPDefaultsKeyDeviceToken];
}

- (void)setDivicetoken:(NSString *)divicetoken {
    [self setObject:divicetoken forKey:APPDefaultsKeyDeviceToken];
}
- (NSString *)platUserID {
    return [self stringForKey:APPDefaultsKeyPlatiUserId];
}

- (void)setPlatUserID:(NSString *)platuserid {
    [self setObject:platuserid forKey:APPDefaultsKeyPlatiUserId];
}

- (NSDictionary*)dataHolder{
     return (NSDictionary*)[self stringForKey:APPDefaultsKeyDataHolder];
}

- (void)setDataHolder:(NSDictionary *)dataHolder {
    [self setObject:dataHolder forKey:APPDefaultsKeyDataHolder];
}

- (NSString *)platIDToken {
    return [self stringForKey:APPDefaultsKeyPlatIDToken];
}

- (void)setPlatIDToken:(NSString *)platIDToken{
    [self setObject:platIDToken forKey:APPDefaultsKeyPlatIDToken];
}

- (BOOL)isHaveSound {
    return [[self objectForKey:APPDefaultsKeyIsHaveSound] boolValue];
}

- (void)setIsHaveSound:(BOOL)setIsHaveSound{
    [self setObject:[NSNumber numberWithBool:setIsHaveSound] forKey:APPDefaultsKeyIsHaveSound];
}

- (BOOL)everLaunched {
    return [[self objectForKey:APPDefaultsKeyEverLaunched] boolValue];
}

- (void)setEverLaunched:(BOOL)setEverLaunched{
    [self setObject:[NSNumber numberWithBool:setEverLaunched] forKey:APPDefaultsKeyEverLaunched];
}

- (BOOL)firstLaunched {
    return [[self objectForKey:APPDefaultsKeyFirstLaunched] boolValue];
}

- (void)setFirstLaunched:(BOOL)setFirstLaunched{
    [self setObject:[NSNumber numberWithBool:setFirstLaunched] forKey:APPDefaultsKeyFirstLaunched];
}

-(NSString *)userInputName{
    return [self stringForKey:APPDefaultsKeyUserInputName];
}
- (void)setUserInputName:(NSString *)userInputName{
    [self setObject:userInputName forKey:APPDefaultsKeyUserInputName];
}


-(float)MainCategoryVer{
    return [self floatForKey:APPMainCategoryVer];
}
- (void)setMainCategoryVer:(float)MainCategoryVer{
    [self setFloat:MainCategoryVer forKey:APPMainCategoryVer];
}

-(LoginType)loginType{
    return [self floatForKey:@"loginType"];
}

-(void)setLoginType:(LoginType)loginType{
    [self setInteger:loginType forKey:@"loginType"];
}
@end
