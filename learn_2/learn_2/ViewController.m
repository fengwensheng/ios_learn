//
//  ViewController.m
//  learn_2
//
//  Created by Vincent Feng on 2022/1/13.
//

#import "ViewController.h"

//an Anonymous Category!
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Hello world!";
    //set position, like Stack in Flutter
    label.frame = CGRectMake(0, 0, 100, 100);
    //test
    label.backgroundColor = UIColor.greenColor;
    label.textColor = UIColor.orangeColor;
    
    [self.view addSubview:label];
    
}


@end
