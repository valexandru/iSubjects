//
//  LessonViewController.h
//  Aplicatie
//
//  Created by Alexandru Vochescu on 09/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LessonViewController : UIViewController

@property IBOutlet UILabel *titleForView;
@property IBOutlet UILabel *definitie1;
@property IBOutlet UILabel *definitie2;
@property IBOutlet UILabel *descriere;
@property IBOutlet UILabel *definitie1Text;
@property IBOutlet UILabel *definitie2Text;
@property IBOutlet UILabel *descriereText;

@property NSString *def1;
@property NSString *def2;
@property NSString *def1Name;
@property NSString *def2Name;
@property NSString *descriereName;
@property NSString *descr;
@property NSString *titleView;
@end
