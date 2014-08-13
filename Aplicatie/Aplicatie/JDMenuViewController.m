//
//  JDMenuViewController.m
//  JDSideMenu
//
//  Created by Markus Emrich on 11.11.13.
//  Copyright (c) 2013 Markus Emrich. All rights reserved.
//

#import "UIViewController+JDSideMenu.h"
#import <FacebookSDK/FacebookSDK.h>

#import "JDMenuViewController.h"
#import "AboutViewController.h"
#import "CopyrightViewController.h"

//@interface JDMenuViewController ()
//@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
//- (IBAction)switchController:(id)sender;
//@end

@implementation JDMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [FBSettings setDefaultAppID: @"1436591166630311"];
//    FBLoginView *loginView = [[FBLoginView alloc] init];
//    [self.view addSubview:loginView];
    // Do any additional setup after loading the view.
}

-(IBAction)aboutUS:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AboutViewController *about = [storyboard instantiateViewControllerWithIdentifier:@"about"];
    [self.sideMenuController hideMenuAnimated:YES];
    [self.navigation pushViewController:about animated:YES];
    

}

-(IBAction)contribute:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://xinnovation.valexandru.com"]];
}

-(IBAction)seeCopyright:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CopyrightViewController *copyrightView = [storyboard instantiateViewControllerWithIdentifier:@"copyright"];
    [self.sideMenuController hideMenuAnimated:YES];
    [self.navigation pushViewController:copyrightView animated:YES];
}

//- (BOOL)application:(UIApplication *)application
//didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    // Override point for customization after application launch.
//    [FBLoginView class];
//    return YES;
//}
//- (void)viewDidLayoutSubviews;
//{
//    [super viewDidLayoutSubviews];
//    self.scrollView.contentSize = CGRectInset(self.scrollView.bounds, 0, -1).size;
//}
//
//- (IBAction)switchController:(id)sender;
//{
//    CGFloat randomHue = (arc4random()%256/256.0);
//    UIViewController *viewController = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor colorWithHue:randomHue saturation:1.0 brightness:1.0 alpha:1.0];
//    viewController.title = [NSString stringWithFormat: @"Hue: %.2f", randomHue];
//    
//    UIViewController *contentController = [[UINavigationController alloc]
//                                           initWithRootViewController:viewController];
//    [self.sideMenuController setContentController:contentController animated:YES];
//}

@end
