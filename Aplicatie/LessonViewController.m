//
//  LessonViewController.m
//  Aplicatie
//
//  Created by Alexandru Vochescu on 09/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "LessonViewController.h"

@interface LessonViewController ()

@end

@implementation LessonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //setting init frame for labels
    self.definitie1 = [[UILabel alloc] initWithFrame:CGRectZero];
    self.definitie2 = [[UILabel alloc] initWithFrame:CGRectZero];
    self.descriere = [[UILabel alloc] initWithFrame:CGRectZero];
    self.definitie1Text = [[UILabel alloc] initWithFrame:CGRectZero];
    self.definitie2Text = [[UILabel alloc] initWithFrame:CGRectZero];
    self.descriereText = [[UILabel alloc] initWithFrame:CGRectZero];
    self.video = [[UIWebView alloc] initWithFrame:CGRectZero];
    
    //setting the text for every label
    self.title=self.titleView;
    self.definitie1.text = self.def1Name;
    self.definitie1Text.text = self.def1;
    
    self.definitie2.text = self.def2Name;
    self.definitie2Text.text = self.def2;
    
    self.descriere.text= self.descriereName;
    self.descriereText.text = self.descr;
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
//    view.backgroundColor = [UIColor redColor];
//    [self.contentView addSubview:view];
    
    self.viewsInScrollView = [[NSMutableArray alloc] init];
    
    //printing the labels

    //the first Definition
    [self addSubviewToScrollView: self.definitie1 withHeight: 25 andDistanceBetweenViews:5];
    self.definitie1Text.layer.borderColor= [UIColor grayColor].CGColor;
    self.definitie1Text.layer.borderWidth =0.5;
    [self addSubviewToScrollView: self.definitie1Text withHeight: 60 andDistanceBetweenViews:10];
    
    //the second Definition
    [self addSubviewToScrollView: self.definitie2 withHeight: 25 andDistanceBetweenViews:25];
    self.definitie2Text.layer.borderColor= [UIColor grayColor].CGColor;
    self.definitie2Text.layer.borderWidth =0.5;
    [self addSubviewToScrollView: self.definitie2Text withHeight: 60 andDistanceBetweenViews:10];
    
    //the description
    [self addSubviewToScrollView:self.descriere withHeight:25 andDistanceBetweenViews:25];
    self.descriereText.layer.borderColor= [UIColor grayColor].CGColor;
    self.descriereText.layer.borderWidth =0.5;
    [self addSubviewToScrollView:self.descriereText withHeight:60 andDistanceBetweenViews: 10];
    
    NSURL *url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=fDXWW5vX-64"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.video loadRequest:request];
    
    [self addSubviewToScrollView:self.video withHeight: 240 andDistanceBetweenViews: 20];

    // Do any additional setup after loading the view.
//    for(int i = 0;i<5;i++)
//    {
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
//    label.backgroundColor = [UIColor blackColor];
//    [self addSubviewToScrollView:label withHeight:i * 20];
//    }
}

-(IBAction)test:(id)sender
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor blackColor];

}



-(void)addSubviewToScrollView:(UIView *)view withHeight:(int)height andDistanceBetweenViews:(int) distance
{
    [self.contentView addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    if(self.bottomConstraint)
    {
        [self.contentView removeConstraint:self.bottomConstraint];
    }
    
    UIView *lastView = [self.viewsInScrollView lastObject];
    NSLayoutConstraint *topContraint;
    if(lastView)
    {
        topContraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:lastView attribute:NSLayoutAttributeBottom multiplier:1 constant: distance];
    }
    else
    {
        topContraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1 constant: distance];
    }
    
    self.bottomConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeBottom multiplier:1 constant:-10];
    NSLayoutConstraint *leadingConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    NSLayoutConstraint *trailingConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:height];
    
    [self.viewsInScrollView addObject:view];
    
    [self.contentView addConstraint:topContraint];
    [self.contentView addConstraint:self.bottomConstraint];
    [self.contentView addConstraint:leadingConstraint];
    [self.contentView addConstraint:trailingConstraint];
    [self.contentView addConstraint:heightConstraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
