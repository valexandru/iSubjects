//
//  JDMenuViewController.h
//  JDSideMenu
//
//  Created by Markus Emrich on 11.11.13.
//  Copyright (c) 2013 Markus Emrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDMenuViewController : UIViewController

@property UINavigationController *navigation;

@property IBOutlet UIButton* about;
@property IBOutlet UIButton* copyright;
@property IBOutlet UIButton* contribute;

-(IBAction)aboutUS:(id)sender;
-(IBAction)contribute:(id)sender;

@end
