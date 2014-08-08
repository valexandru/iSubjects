//
//  FizicaViewController.h
//  Aplicatie
//
//  Created by Alexandru Vochescu on 07/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FizicaViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView* chapters;
@property NSMutableArray* chaptersArray;

@end
