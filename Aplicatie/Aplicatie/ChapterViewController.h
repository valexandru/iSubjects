//
//  ChapterViewController.h
//  Aplicatie
//
//  Created by Alexandru Vochescu on 08/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Lectii.h"

@interface ChapterViewController : UIViewController
<UITableViewDataSource, UITabBarDelegate>

@property NSString *titleChapter;
@property IBOutlet UILabel* titleForLayout;
@property IBOutlet UITableView* lessonsList;
@property Lectii *lectii;
@property NSDictionary *dict;

@end
