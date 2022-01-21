//
//  ViewController.m
//  learn_3
//
//  Created by Vincent Feng on 2022/1/21.
//

#import "ViewController.h"
#import "NewViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)present:(UIButton *)sender {
    
    NewViewController *newViewController = [NewViewController new];
//    newViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:newViewController animated:false completion:nil];
    
}

@end
