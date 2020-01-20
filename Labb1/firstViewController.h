//
//  firstViewController.h
//  Labb1
//
//  Created by Marcus Klaesson on 2020-01-13.
//  Copyright © 2020 Marcus Klaesson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface firstViewController : UIViewController

- (IBAction)guessButton:(id)sender;
+ (void)darkModeChecker:(UIView*)view;

@end

NS_ASSUME_NONNULL_END
