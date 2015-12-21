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

NSString *const APPDefaultsKeyDeviceToken = @"divicetoken";
NSString *const APPDefaultsKeyDataHolder = @"dataHolder";
NSString *const APPDefaultsKeyUserId = @"userId";

NSString *const APPDefaultsKeyToken=@"token";
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

-(void)setLoginId:(NSString *)loginid{
    [self setObject:loginid forKey:APPDefaultsKeyLoginID];
}

-(NSString *)loginId{
    return [self stringForKey:APPDefaultsKeyLoginID];
}

- (NSString *)divicetoken {
    return [self stringForKey:APPDefaultsKeyDeviceToken];
}

- (void)setDivicetoken:(NSString *)divicetoken {
    [self setObject:divicetoken forKey:APPDefaultsKeyDeviceToken];
}
- (NSString *)userID {
    return [self stringForKey:APPDefaultsKeyUserId];
}

- (void)setUserID:(NSString *)userid {
    [self setObject:userid forKey:APPDefaultsKeyUserId];
}

- (NSDictionary*)dataHolder{
     return (NSDictionary*)[self stringForKey:APPDefaultsKeyDataHolder];
}

- (void)setDataHolder:(NSDictionary *)dataHolder {
    [self setObject:dataHolder forKey:APPDefaultsKeyDataHolder];
}

- (NSString *)token {
    return [self stringForKey:APPDefaultsKeyToken];
}

- (void)setToken:(NSString *)token{
    [self setObject:token forKey:APPDefaultsKeyToken];
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

-(LoginType)loginType{
    return [self floatForKey:@"loginType"];
}

-(void)setLoginType:(LoginType)loginType{
    [self setInteger:loginType forKey:@"loginType"];
}

-(NSString *)cityCd{
    return [self stringForKey:@"CityId"];
}
-(void)setCityCd:(NSString *)cityId{
    [self setObject:cityId forKey:@"CityId"];
}
-(NSString *)cCode{
    return [self stringForKey:@"cCode"];
}
-(void)setCCode:(NSString *)cCode{
    [self setObject:cCode forKey:@"cCode"];
}
-(NSString *)email{
    return [self stringForKey:@"email"];
}
-(void)setEmail:(NSString *)email{
    [self setObject:email forKey:@"email"];
}
@end
