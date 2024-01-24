//
//  AppDelegate.m
//  BuglyProOverSeaDemo
//
//  Created by Hongbo Cui on 2024/1/24.
//

#import "AppDelegate.h"
#import <BuglyProOverSea/Bugly.h>
#import <BuglyProOverSea/BuglyConfig.h>
#import <BuglyProOverSea/BuglyDefine.h>
#import <BuglyProOverSea/BuglyLaunchMonitorPlugin.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


static void logger_func(RMLoggerLevel level, const char *log) {
    NSLog(@"%s", log);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // Override point for customization after application launch.
    /// 设置RMonitor日志输出
    [Bugly registerLogCallback:logger_func];
    [BuglyLaunchMonitorPlugin startSpan:@"parentSpan" parentSpanName:nil];
    [BuglyLaunchMonitorPlugin startSpan:@"spanTest" parentSpanName:@"parentSpan"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [BuglyLaunchMonitorPlugin endSpan:@"spanTest"];
        [BuglyLaunchMonitorPlugin endSpanFromLaunch:@"spanFromLaunch"];
    });

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [BuglyLaunchMonitorPlugin endSpan:@"parentSpan"];
    });
    
    [BuglyLaunchMonitorPlugin addTag:@"tagTest1"];
    [BuglyLaunchMonitorPlugin addTag:@"tagTest2"];
    
    BuglyConfig* config = [[BuglyConfig alloc] initWithAppId:@"xxxxxxxx" appKey:@"xxxxxxxxx"];
    [Bugly start:RM_MODULE_ALL config:config];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
