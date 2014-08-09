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
    self.titleForView.text =self.titleView;
    
    self.definitie1.text = self.def1Name;
    self.definitie1Text.text = self.def1;
    
    self.definitie2.text = self.def2Name;
    self.definitie2Text.text = self.def2;
    
    self.descriere.text= self.descriereName;
    self.descriereText.text = self.descr;
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
