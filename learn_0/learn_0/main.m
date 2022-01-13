//
//  main.m
//  learn_0
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

//remove Scene stuff
//1 info.plist
//2 AppDelegate .m
//3 AppDelegate .h +window

//3 ways for ios ui dev
//1 Storyboard (/Scene) (current project)
//2 Xib/Nib
//3 By-hand, like Android
