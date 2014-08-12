//
//  MainMenuViewController.h
//  Aplicatie
//
//  Created by Alexandru Vochescu on 07/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenuViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView *courses;
@property IBOutlet UILabel *welcome;
@property NSMutableArray *coursesArray;
@property int numberOfCourses;

-(IBAction)test:(id)sender;
@end
