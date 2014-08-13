//
//  LessonViewController.h
//  Aplicatie
//
//  Created by Alexandru Vochescu on 09/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIImageView (additions)
- (CGSize)imageScale;
@end

@interface LessonViewController : UIViewController
//<UIScrollViewDelegate>
//{
//    UIScrollView *mainScrollView;
//}

@property IBOutlet UILabel *titleForView;
@property IBOutlet UILabel *definitie1;
@property IBOutlet UILabel *definitie2;
@property IBOutlet UILabel *descriere;
@property IBOutlet UILabel *definitie1Text;
@property IBOutlet UILabel *definitie2Text;
@property IBOutlet UITextView *descriereText;
@property IBOutlet UIScrollView *MainScrollView;
@property IBOutlet UIWebView *video;
@property IBOutlet UIImageView *imagine;

@property IBOutlet UIView *contentView;
@property NSMutableArray *viewsInScrollView;

@property NSLayoutConstraint *bottomConstraint;

-(IBAction)test:(id)sender;

@property NSString *def1;
@property NSString *def2;
@property NSString *def1Name;
@property NSString *def2Name;
@property NSString *descriereName;
@property NSString *descr;
@property NSString *titleView;
@property NSString *imageName;
@property NSString *videoName;

//-(void) addScrollView;

@end
