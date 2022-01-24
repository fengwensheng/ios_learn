//
//  AppDelegate.m
//  learn_6
//
//  Created by Vincent Feng on 2022/1/24.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    application.idleTimerDisabled =true;
    [self testUIDevice];
    
    return YES;
}

- (void)testUIDevice {
    UIDevice *device = UIDevice.currentDevice;
    
    NSString *name = device.name;
    NSString *type = device.model;
    NSString *version = device.systemVersion;
    //not reliable for UUID
//    NSString *uuid = device.identifierForVendor.UUIDString;
    device.batteryMonitoringEnabled = true;
    float battery = device.batteryLevel;
    
    NSLog(@"[name]: %@",name);
    NSLog(@"[type]: %@",type);
    NSLog(@"[version]: %@",version);
//    NSLog(@"[uuid]: %@",uuid);
    NSLog(@"[battery]: %f",battery);
}


@end
