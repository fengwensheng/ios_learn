//
//  AppDelegate.m
//  learn_7
//
//  Created by Vincent Feng on 2022/1/24.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    application.idleTimerDisabled = true;
    [self testURLScheme];
    
    return YES;
}

-(void)testURLScheme {
    UIApplication *application = [UIApplication sharedApplication];
    
    //tel need USE real iPhone for test, NOT simulator
//    NSURL *telURL = [NSURL URLWithString:@"tel://1008611"];
    //query some popular app's scheme:  https://sharecuts.cn/app/
    NSURL *weixinURL = [NSURL URLWithString:@"weixin://"];
    
    //custom app, before canOpenURL(), need declaring in info.plist
    if([application canOpenURL:weixinURL]) {
        [application openURL:weixinURL options:@{} completionHandler:nil];
    }
}

//callback this methods when others open your URL Scheme
-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    NSLog(@"learn_7 opened!");
    return YES;
}



@end
