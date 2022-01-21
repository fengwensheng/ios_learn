//
//  NewViewController.m
//  learn_3
//
//  Created by Vincent Feng on 2022/1/21.
//

#import "NewViewController.h"
#import "ThirdViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController

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
    [self dismissViewControllerAnimated:NO completion:nil];
}
- (IBAction)third:(UIButton *)sender {
    ThirdViewController *third = [ThirdViewController new];
    [self presentViewController:third animated:false completion:nil];
}

@end
