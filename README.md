# Introduction

iOS learning notes demo.

## learn_0

Remove `Scene` stuff:

1. info.plist
2. AppDelegate .m
3. AppDelegate .h +window 

---

There are *3* ways for ios ui development.

* Storyboard (/Scene) (current project)
* Xib/Nib
* By-hand, like Android

## learn_1

Remove `Storyboard` stuff:

1. Targets -> Main Interface
2. rm Main.storyboard
3. add Cocoa Touch Class(ViewController,Xib)
4. ViewController/Nib attach to UI in AppDelegate.m

## learn_2

Remove `Xib` stuff. 

Write ui by hand directly in ViewController's viewDidLoad().

`keyword` **Window** , **KeyWindow** , **ViewController/View** , **SubView**,**frame**