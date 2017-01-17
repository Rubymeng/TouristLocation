//
//  AppDelegate.h
//  TouristLocation
//
//  Created by tyhmeng on 17/1/16.
//  Copyright © 2017年 tyhmeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BaiduMapAPI_Base/BMKMapManager.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong) BMKMapManager *manager;
@property (nonatomic,strong) UINavigationController *nav;


@end

