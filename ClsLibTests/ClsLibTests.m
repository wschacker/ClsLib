//
//  ClsLibTests.m
//  ClsLibTests
//
//  Created by wangjl on 15/8/25.
//  Copyright (c) 2015年 wangjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ResourceManager.h"

@interface ClsLibTests : XCTestCase

@end

@implementation ClsLibTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        NSDictionary *dic = PropertyList(@"files/appConfig.plist");
        NSLog(@"dic ->%@",dic);
    }];
}

@end
