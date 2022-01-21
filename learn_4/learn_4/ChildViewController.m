//
//  ChildViewController.m
//  learn_4
//
//  Created by Vincent Feng on 2022/1/21.
//

#import "ChildViewController.h"

@interface ChildViewController ()

@end

@implementation ChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)back:(UIButton *)sender {
    //child is self!
    ChildViewController *child = self;
    [child.view removeFromSuperview];
    [child removeFromParentViewController];
    //(child)willMoveTo(parent,nill Stand-For REMOVE)
    [child willMoveToParentViewController:nil];
    //did...(system auto)
    
}

@end
