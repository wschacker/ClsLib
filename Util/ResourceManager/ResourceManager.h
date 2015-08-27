//
//  ResourceManager.h
//  ClsLib
//
//  Created by wangjl on 15/8/27.
//  Copyright (c) 2015年 wangjl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIImage.h>


#define UserId @"testUserId"


CG_INLINE UIImage * UIResourceBundleImage(NSString *strPath){
    return [UIImage imageNamed:[NSString stringWithFormat:@"default.bundle/image/%@.png",strPath]];
}

@interface ResourceManager : NSObject

+(NSString *)appDocumentsDirectory;

+(NSString *)appCachesDirectory;

+(NSString *)applicationSupportDirectory;

+(NSString *)appTemporaryDirectory;

+(NSString *)currentUserDirectory;

+(NSString *)userDirectoryWithID:(NSString *)userID;
+(NSArray *)getFilesInDir:(NSString *)dir;
+(BOOL)resolveDirectoryAtPath:(NSString *)dirPath;
+(BOOL)isExist:(NSString *)filePath;

@end
