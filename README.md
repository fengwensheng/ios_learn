# Introduction

iOS learning notes demo.

## learn_0

1. Remove `Scene` stuff:
   
   * info.plist
   
   * AppDelegate .m
   
   * AppDelegate .h +window 
   
   ---
   
2. There are *3* ways for ios ui development.
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

`keyword` ***Window*** , ***KeyWindow*** , ***ViewController/View*** , ***SubView***, ***frame***

## learn_3 

Transition between multiple ViewController.

Using `Present`.

## learn_4

Using `Containter`(ViewController).

Child vs. Parent.

xxxMoveToParentxxx().

There's only one xxxMovexxx method and Using the `nil` parameter to stand for `REMOVE`.

will(system auto) -> did(MOVE: contoller) -> will(REMVOE: nil) -> did(system auto)

## learn_5

App File System, `Sandbox`.

Sandbox = `Bundle` Container + `Data` Container + `iCloud` Container

---

Bundle = `mainBundle` + OtherBundles

Data = `Documents` + `Library` + `Temp`. -> home

---

`Library` = Caches + Preferences

`mainBundle` -> MyApp.app

## learn_6

Device Information.

`Aspects`: **Name**, **Type**, **System**, **Battery**

## learn_7

1. **Open** External App.

   `URL Scheme`: ***system***(eg. telephone), ***custom***(third-part app,like your app or Wechat)

   None system scheme, custom, you need DECLARE the app you want query for.(`LSApplicationQueriesSchemes` array)

   ---

2. **Define** an app URL Scheme.

   Target -> Info -> URL Type

