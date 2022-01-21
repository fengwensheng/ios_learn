//
//  ViewController.m
//  learn_4
//
//  Created by Vincent Feng on 2022/1/21.
//

#import "ViewController.h"
#import "ChildViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)toChild:(UIButton *)sender {
    ChildViewController *child = [ChildViewController new];
    
    [self.view addSubview:child.view];
    [self addChildViewController:child];
    //will...(system auto)
    //(child controller)didMoveTo(parent controller)
    [child didMoveToParentViewController:self];
    
}

@end
