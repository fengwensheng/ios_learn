//
//  AppDelegate.m
//  learn_2
//
//  Created by Vincent Feng on 2022/1/13.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    ViewController *viewController = [[ViewController alloc] init];
    [self.window setRootViewController: viewController];
    //key window
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
