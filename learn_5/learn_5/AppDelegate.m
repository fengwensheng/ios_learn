//
//  AppDelegate.m
//  learn_5
//
//  Created by Vincent Feng on 2022/1/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //disable screen locking
    application.idleTimerDisabled = true;
    
    //use simulator to test, and the path will map in Mac path
    //app file system as a Sandbox
    
    //Sandbox -> Data Container
    //home = Documents + Library + SystemData + tmp
    NSString *homeDir = NSHomeDirectory();
    
    //Documehts
    //NSDocumentDirectory
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
    
    //Library
    //NSLibraryDirectory
    NSString *libDir = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, true) firstObject];
    
    //tmp, forget it, not import for iOS dev
    //NSLibraryDirectory
    //NSString *tmpDir = NSTemporaryDirectory();
    
    //cache
    NSString *cacheDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, true) firstObject];
    
    NSLog(@"[homeDir]: %@",homeDir);
    
    NSLog(@"[docDir]: %@",docDir);
    NSLog(@"[libDir]: %@",libDir);
    NSLog(@"[cacheDir]: %@",cacheDir);
    
    //2
    NSString *mainBundleDir = [[NSBundle mainBundle] bundlePath];
    NSLog(@"[mainBundleDir]: %@",mainBundleDir);
    
    
    return YES;
}



@end
