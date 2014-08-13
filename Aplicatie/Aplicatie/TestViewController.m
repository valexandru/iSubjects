//
//  TestViewController.m
//  iSubjects
//
//  Created by Iulian-Bogdan Vlad on 13/08/14.
//  Copyright (c) 2014 Iulian-Bogdan Vlad. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
    
//    NSString *queslabel, *questext;
//    
//    
//    NSDictionary *quest = [arrayContent objectAtIndex:0];
//    for (int i=0;i<arrayContent.count;i++)
//    {
//        queslabel = [[quest allKeys] objectAtIndex:i];
//        questext = [quest valueForKey: queslabel];
//        testvc.quesName=queslabel;
//        testvc.quesText=questext;
//    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.title=self.titleView;
    
    self.viewsInScrollView = [[NSMutableArray alloc] init];
    self.userAnswers = [[NSMutableArray alloc]init];
    self.correctAnswers = [[NSMutableArray alloc]init];
    self.result = [[UILabel alloc] initWithFrame:CGRectZero];
    NSString *queslabel, *quesCorrectAnswer;
    
    
    for (int i=0; i<self.questions.count; i++)
    {
        NSDictionary *quest = [self.questions objectAtIndex:i];
        queslabel = [[quest allKeys] objectAtIndex:0];
        quesCorrectAnswer= [quest valueForKey:queslabel];
        UILabel *question = [[UILabel alloc] initWithFrame:CGRectZero];
        question.text = [NSString stringWithFormat:@"%d. %@", i+1, queslabel];
        [self addSubviewToScrollView:question withHeight: 25 andDistanceBetweenViews:10];
        UITextField *answer = [[UITextField alloc] initWithFrame:CGRectZero];
        answer.layer.borderWidth=1;
        answer.layer.borderColor=[[UIColor blackColor] CGColor];
        answer.delegate = self;
        [self addSubviewToScrollView:answer withHeight:40 andDistanceBetweenViews:20];
        
        [self.userAnswers addObject:answer];
        [self.correctAnswers addObject:quesCorrectAnswer];
    }
    
    [self addSubviewToScrollView:self.result withHeight:40 andDistanceBetweenViews:20];
    
    self.submitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.submitButton addTarget:self
               action:@selector(onSubmit)
     forControlEvents:UIControlEventTouchUpInside];
    [self.submitButton setTitle:@"Submit" forState:UIControlStateNormal];
    self.submitButton.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self addSubviewToScrollView:self.submitButton withHeight:70 andDistanceBetweenViews:50];
}

- (void) onSubmit
{
    bool didAnswerAllCorrectly=true;
    for (int i=0; i<self.userAnswers.count; i++)
    {
        UITextField *x=[self.userAnswers objectAtIndex:i];
        if (!([x.text isEqual: [self.correctAnswers objectAtIndex:i]]))
        {
            didAnswerAllCorrectly=false;
            x.backgroundColor =[UIColor redColor];
            x.text = [self.correctAnswers objectAtIndex:i];
        }
    }
    if (didAnswerAllCorrectly)
    {
        NSLog(@"HE FUCKING DID IT!");
        self.result.text = @"You did it! :D";
        self.result.textColor = [UIColor greenColor];
        [self.result setFont:[UIFont systemFontOfSize:36]];
    }
    else
    {
        NSLog(@"He sucks :P");
        self.result.text = @"You failed! :P";
        self.result.textColor = [UIColor redColor];
        [self.result setFont:[UIFont systemFontOfSize:36]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField;
{
    NSInteger nextTag = textField.tag + 1;
    // Try to find next responder
    UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    if (nextResponder) {
        // Found next responder, so set it.
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, so remove keyboard.
        [textField resignFirstResponder];
    }

    self.MainScrollView.contentOffset = CGPointMake(0, -30);
    
    return NO; // We do not want UITextField to insert line-breaks.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.MainScrollView.contentOffset = CGPointMake(0, textField.frame.origin.y-20);
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
//    view.center = CGPointMake(self.contentView.frame.size.width / 2, self.contentView.frame.size.height / 2);
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
