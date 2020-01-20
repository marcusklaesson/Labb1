//
//  firstViewController.m
//  Labb1
//
//  Created by Marcus Klaesson on 2020-01-13.
//  Copyright © 2020 Marcus Klaesson. All rights reserved.
//

#import "firstViewController.h"
#include <stdlib.h>

@interface firstViewController ()
@property (weak, nonatomic) IBOutlet UITextField *guessField;
@property (nonatomic) int maxValue;
@property (nonatomic) int minValue;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (nonatomic) int random;

@end

@implementation firstViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    [firstViewController darkModeChecker:self.view];
    
    self.maxValue = 100;
    self.minValue = 1;
    
    [self randomGenerator];
    
}
+(void)darkModeChecker:(UIView*)view{
    
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    BOOL darkMode = [settings boolForKey:@"darkModeEnabled"];
    
    if(darkMode){
        view.backgroundColor = UIColor.blackColor;
    }else {
        view.backgroundColor = UIColor.whiteColor;
    }
}

-(int)randomGenerator{
    
    return self.random = arc4random_uniform(100)+1;
    
}

- (IBAction)guessButton:(id)sender {

    
        if([self.guessField.text intValue] > self.random){
             self.infoLabel.text = @"Lower!";
             
         }else if([self.guessField.text intValue] < self.random){
             self.infoLabel.text = @"Higher!";
             
         }else {
             self.infoLabel.text = @"Congratz, you won!";
             
         }
             NSLog(@"%i", self.random);
        
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
