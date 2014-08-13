//
//  TestViewController.h
//  iSubjects
//
//  Created by Iulian-Bogdan Vlad on 13/08/14.
//  Copyright (c) 2014 Iulian-Bogdan Vlad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController
//UI Items in ScrollView
@property IBOutlet UITableView* testtable;
@property IBOutlet UIScrollView *MainScrollView;
@property IBOutlet UIView *contentView;
@property IBOutlet UIButton *submitButton;
@property IBOutlet UILabel *result;
@property NSMutableArray *viewsInScrollView;


@property NSLayoutConstraint *bottomConstraint;

//layout variables
@property NSString* titleView;
@property NSString* quesName;
@property NSString* quesText;
@property NSArray* questions;
@property NSMutableArray* userAnswers;
@property NSMutableArray* correctAnswers;

-(void) onSubmit;

@end
