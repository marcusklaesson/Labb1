//
//  ViewController.m
//  Labb1
//
//  Created by Marcus Klaesson on 2020-01-13.
//  Copyright © 2020 Marcus Klaesson. All rights reserved.
//

#import "ViewController.h"
#import "firstViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *darkMode;
@property (weak, nonatomic) IBOutlet UILabel *darkModeLabel;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    [firstViewController darkModeChecker:self.view];
}
// Darkmode/Lightmode switch
- (IBAction)darkMode:(id)sender {

    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    
    if (self.darkMode.isOn) {
        self.view.backgroundColor = UIColor.blackColor;
        [settings setBool:YES forKey:@"darkModeEnabled"];
        self.darkModeLabel.text = @"Darkmode";
        
    } else  {
        self.view.backgroundColor = UIColor.whiteColor;
        [settings setBool:NO forKey:@"darkModeEnabled"];
        self.darkModeLabel.text = @"Lightmode";
    }
    [settings synchronize];
}




@end
