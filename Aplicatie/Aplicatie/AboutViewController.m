//
//  AboutViewController.m
//  iSubjects
//
//  Created by Alexandru Vochescu on 13/08/14.
//  Copyright (c) 2014 Alexandru Vochescu . All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

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
    
    
    UIImage *image1 = [UIImage imageNamed:@"icon125.png"];
    self.logo = [[UIImageView alloc] initWithImage:image1];
    // no memory management needed if you're using ARC
    self.logo.contentMode = UIViewContentModeScaleAspectFit;
    self.logo.clipsToBounds = YES;
    
    [self.contentView addSubview:self.logo];
    
    self.logo.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint* topConstraint = [NSLayoutConstraint constraintWithItem:self.logo attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1 constant: 60];
    NSLayoutConstraint *leadingConstraint = [NSLayoutConstraint constraintWithItem:self.logo attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeft multiplier:1 constant:40];
    NSLayoutConstraint *trailingConstraint = [NSLayoutConstraint constraintWithItem:self.logo attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeRight multiplier:1 constant:-210];
    [self.contentView addConstraint:topConstraint];
    [self.contentView addConstraint:leadingConstraint];
    [self.contentView addConstraint:trailingConstraint];
    
    self.version.text=[NSString stringWithFormat:@"0.0.1"];
    self.name1.text=[NSString stringWithFormat:@"Developer 1:"];
    self.person1.numberOfLines=2;
    self.person1.text=[NSString stringWithFormat:@"Vochescu Alexandru"];
    self.name2.text=[NSString stringWithFormat:@"Developer 2:"];
    self.person2.numberOfLines=2;
    self.person2.text=[NSString stringWithFormat:@"Dragos Musan"];
    self.name3.text=[NSString stringWithFormat:@"Design: "];
    self.person3.numberOfLines=2;
    self.person3.text=[NSString stringWithFormat:@"Costi Ciorobea && Adela Istrate"];
//    [self.view bringSubviewToFront: self.logo];
    // Do any additional setup after loading the view.
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
