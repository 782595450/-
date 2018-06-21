//
//  LSNetworkConfig.m
//  大千世界
//
//  Created by 赖双全 on 2018/6/21.
//  Copyright © 2018年 赖双全. All rights reserved.
//

#import "LSNetworkConfig.h"

#define LS_GIT_LIVE_SOURCE    @"https://codeload.github.com/782595450"

@implementation LSNetworkConfig

+ (instancetype)shareInstance {
    static LSNetworkConfig * obj;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        obj = [[LSNetworkConfig alloc] init];
    });
    return obj;
}

- (void)setSevice{
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = LS_GIT_LIVE_SOURCE;

}

@end
