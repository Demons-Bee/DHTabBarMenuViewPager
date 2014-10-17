//
//  AppDelegate.m
//  DHTabBarMenuViewPager
//
//  Created by 胡大函 on 14/10/8.
//  Copyright (c) 2014年 HuDahan_payMoreGainMore. All rights reserved.
//

#import "AppDelegate.h"
#import "DHTabBarViewController.h"
#import "ViewController.h"
#import "DHMenuPagerViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    NSArray *titleArray = [NSArray arrayWithObjects:@"first",@"second",@"third",@"forth",@"fifth",@"sixth",@"seventh", nil];
    NSMutableArray *controllerArray = [[NSMutableArray alloc]init];
    
    for (NSString* title in titleArray)
    {
        ViewController *vc = [[ViewController alloc]init];
        vc.labelTitle = [title stringByAppendingString:@" View"];
        [controllerArray addObject:vc];
    }
    
    DHMenuPagerViewController *rootVC = [[DHMenuPagerViewController alloc] initWithViewControllers:controllerArray titles:titleArray];
    rootVC.title = @"Here";
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:rootVC];
    nav.navigationBar.translucent = NO;
    ViewController *rootVC2 = [[ViewController alloc]init];
    rootVC2.labelTitle = @"Single111 View Controller";
    ViewController *rootVC3 = [[ViewController alloc]init];
    rootVC3.labelTitle = @"Single222 View Controller";
    
    NSArray *controllers = @[nav,rootVC2,rootVC3];
    NSArray *titles = @[@"One",@"Two",@"Three"];
    NSArray *tabImages = @[@"tabbar_discover",@"tabbar_discover",@"tabbar_discover"];
    NSArray *tabSelectedImages = @[@"tabbar_discover_highlighted",@"tabbar_discover_highlighted",@"tabbar_discover_highlighted"];
    
    DHTabBarViewController *root = [[DHTabBarViewController alloc] initWithChildViewControllers:controllers tabTitles:titles tabImages:tabImages selectedImages:tabSelectedImages backgroundImage:@"tab_bg" selectionIndicatorImage:@"tab_bg_pressed"];
    
    self.window.rootViewController = root;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
