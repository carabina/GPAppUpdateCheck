//
//  AppDelegate.m
//  GPAppUpdateCheck
//
//  Created by chen on 2016/12/20.
//  Copyright © 2016 Gorpeln. All rights reserved.
//

#import "AppDelegate.h"
#import "GPNewEditionManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /**
     模拟数据 从后台获取更新要求
     0、不展示更新
     1、展示更新（立即升级、稍后再说、忽略）
     2、强制更新
     采用微信的appid
     */
    NSInteger isNeedUpdate = 1;
    if (isNeedUpdate == 1 || isNeedUpdate == 2) {
        [GPNewEditionManager checkNewEditionWithAppID:@"350962117" ctrl:self.window.rootViewController updateType:isNeedUpdate];
    }
    
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
