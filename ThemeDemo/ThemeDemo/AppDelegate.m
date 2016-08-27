//
//  AppDelegate.m
//  ThemeDemo
//
//  Created by yu243e on 16/8/26.
//  Copyright © 2016年 yu243e. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    HomeViewController *homeViewController = [[HomeViewController alloc]init];
    UINavigationController *navgationController = [[UINavigationController alloc]initWithRootViewController:homeViewController];
    navgationController.navigationBarHidden = NO;
    navgationController.navigationBar.barStyle = UIBarStyleBlack;
    self.window.rootViewController = navgationController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
