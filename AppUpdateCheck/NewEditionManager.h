//
//  NewEditionManager.h
//  AppUpdateCheck
//
//  Created by chen on 2016/12/20.
//  Copyright © 2016年 Gorpeln. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class AppStoreInfoModel;

typedef void(^CheckVersionBlock)(AppStoreInfoModel *appInfo);

@interface NewEditionManager : NSObject

/**
 *  检测新版本(使用系统默认提示框)
 *
 *  appID:应用在Store里面的ID (应用的AppStore地址里面可获取)
 *  containCtrl: 提示框显示在哪个控制器上
 */
+(void)checkNewEditionWithAppID:(NSString *)appID ctrl:(UIViewController *)containCtrl updateType:(NSInteger)updateType;

/**
 *  检测新版本(使用自定义提示框)
 *
 *  @param appID 应用在Store里面的ID (应用的AppStore地址里面可获取)
 *  @param checkVersionBlock AppStore上版本信息回调block
 */
+(void)checkNewEditionWithAppID:(NSString *)appID CustomAlert:(CheckVersionBlock)checkVersionBlock;


@end
