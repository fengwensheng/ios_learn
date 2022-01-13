//
//  AppDelegate.m
//  learn_1
//
//  Created by Vincent Feng on 2022/1/13.
//

#import "AppDelegate.h"
#import "MyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //MyViewControllr: attach to ui
    //self.window or _window
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MyViewController *myViewController = [[MyViewController alloc] init];
    
    _window.rootViewController = myViewController;
    
    [_window makeKeyAndVisible];
    
    return YES;
}


@end
