//
//  main.m
//  learn_1
//
//  Created by Vincent Feng on 2022/1/13.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

//remove Storyboard stuff
//1 Targets -> Main Interface
//2 rm Main.storyboard
//3 add Cocoa Touch Class(ViewController,Xib)
//4 ViewController/Nib attach to UI in AppDelegate.m

