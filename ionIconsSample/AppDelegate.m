//
//  AppDelegate.m
//  ionIconsSample
//
//  Created by Safx Developer on 2013/11/12.
//  Copyright (c) 2013年 Safx Developers. All rights reserved.
//

#import "AppDelegate.h"
#import "IonIconViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc]
                                      initWithRootViewController:[[IonIconViewController alloc] init]];
    self.window.backgroundColor = [UIColor whiteColor]; [self.window makeKeyAndVisible];
    return YES;
}

@end
