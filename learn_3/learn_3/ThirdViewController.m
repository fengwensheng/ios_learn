//
//  ThirdViewController.m
//  learn_3
//
//  Created by Vincent Feng on 2022/1/21.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    [self dismissViewControllerAnimated:false completion:nil];
}
- (IBAction)root:(UIButton *)sender {
    UIViewController *presentingVC = self;
    UIViewController *root;
    while (presentingVC) {
        root = presentingVC;
        presentingVC = presentingVC.presentingViewController;
    }
    [root dismissViewControllerAnimated:true completion:nil];
}

@end
