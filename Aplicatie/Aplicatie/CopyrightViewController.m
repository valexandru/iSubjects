//
//  CopyrightViewController.m
//  iSubjects
//
//  Created by Alexandru Vochescu on 14/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "CopyrightViewController.h"

@interface CopyrightViewController ()

@end

@implementation CopyrightViewController

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
    
    // self.copyrightview = [[UITextView alloc] init];

    NSURL *url = [NSURL URLWithString:@"https://github.com/valexandru/iSubjects"];
    
    self.copyrightview.text = [NSString stringWithFormat:@"All the information used in iSubjects comes from Wikipedia and Youtube, so the copyright for them falls under their respective copyright.\n\nThe code used in the application is available on Github at: %@ ", url];
    self.copyrightview.editable=NO;
    [self.contentView addSubview:self.copyrightview];
    // Do any additional setup after loading the view.
}

//- (void)textViewDidChange:(UITextView *)textView
//{
//    NSUInteger maxNumberOfLines = 5;
//    NSUInteger numLines = textView.contentSize.height/textView.font.lineHeight;
//    if (numLines > maxNumberOfLines)
//    {
//        textView.text = [textView.text substringToIndex:textView.text.length - 1];
//    }
//}

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
