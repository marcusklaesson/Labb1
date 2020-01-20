//
//  thirdViewController.m
//  Labb1
//
//  Created by Marcus Klaesson on 2020-01-16.
//  Copyright © 2020 Marcus Klaesson. All rights reserved.
//

#import "thirdViewController.h"
#import "firstViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [firstViewController darkModeChecker:self.view];
    
}

    /*
     #pragma mark - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */

    @end
    
    
    
