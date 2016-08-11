//
//  HttpUtil.m
//  FM
//
//  Created by Jianglei Wang on 3/25/15.
//  Copyright (c) 2015 Jianglei Wang. All rights reserved.
//

#import "HttpUtil.h"
#import "AFNetworking.h"

@interface HttpUtil(){
    AFHTTPRequestOperationManager *manager;
}

@end

@implementation HttpUtil

+(instancetype)sharedHttpUtil{
    
    static HttpUtil *sharedHttpUtil = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedHttpUtil = [[self alloc] init];
    });
    return sharedHttpUtil;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = 5;
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
}
-(void)cancel{
    [manager.operationQueue cancelAllOperations];
}
-(void)requestHtmlUrl:(NSString *)strUrl okBlock:(okBlock_t)okBlock ngBlock:(ngBlock_t)ngBlock{
     [manager GET:strUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        okBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSString* newStr = [[NSString alloc] initWithData:operation.responseData encoding:NSUTF8StringEncoding];
        NSLog(@"Error: %@", error);
        NSLog(@"Error: %@", newStr);
        ngBlock(error);
    }];
}


-(void)requestUrl:(NSString *)strUrl okBlock:(okBlock_t)okBlock ngBlock:(ngBlock_t)ngBlock{
    [manager GET:strUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        okBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        ngBlock(error);
    }];
}

-(void)postRequestUrl:(NSString *)strUrl para:(NSDictionary *)parmDic okBlock:(okBlock_t)okBlock ngBlock:(ngBlock_t)ngBlock{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

        NSMutableDictionary *parameters = [NSMutableDictionary dictionaryWithDictionary:parmDic];

        [manager POST:strUrl parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
            dispatch_async(dispatch_get_main_queue(),^{
                
                okBlock(responseObject);});
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            ngBlock(error);
        }];
    });
}

-(void)postRequestUrl:(NSString *)strUrl para:(NSDictionary *)parmDic file:(NSString *)filePath okBlock:(okBlock_t)okBlock ngBlock:(ngBlock_t)ngBlock{
    NSDictionary *parameters = parmDic;
    NSURL *path = [NSURL fileURLWithPath:filePath];
    [manager POST:strUrl parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        [formData appendPartWithFileURL:path name:@"image" error:nil];
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {

        okBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        ngBlock(error);
    }];
}

-(void)postRequestUrl:(NSString *)strUrl para:(NSDictionary *)parmDic imageKey:(NSString *)key image:(UIImage *)img okBlock:(okBlock_t)okBlock ngBlock:(ngBlock_t)ngBlock{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionaryWithDictionary:parmDic];
    NSData* imgData = UIImagePNGRepresentation(img);
    [manager POST:strUrl parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        NSString *fileName = [NSString stringWithFormat:@"image_%@.png",[NSDate new]];
        [formData appendPartWithFileData:imgData
                                    name:key
                                fileName:fileName mimeType:@"image/png"];
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        okBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        ngBlock(error);
    }];
}

@end
