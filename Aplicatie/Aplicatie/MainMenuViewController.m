//
//  MainMenuViewController.m
//  Aplicatie
//
//  Created by Alexandru Vochescu on 07/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

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
    self.numberOfCourses=2;
    self.title=@"Home";
    if (self.coursesArray==nil)
    {
        self.coursesArray = [[NSMutableArray alloc] init];
    }
    [self.coursesArray addObject: @"Fizica"];
    [self.coursesArray addObject: @"Istorie"];
    [super viewDidLoad];
    
    self.courses.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.welcome setCenter:self.view.center];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.numberOfCourses;
}

-(IBAction)test:(id)sender
{
    NSLog(@"TEST");
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Deselecting the row
    [tableView deselectRowAtIndexPath:indexPath animated: YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    id vc = [storyboard instantiateViewControllerWithIdentifier: [NSString stringWithFormat: @"%@", [self.coursesArray objectAtIndex: indexPath.row]]];
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Ma intreaba de linia: %d", indexPath.row);
    static NSString *identifier = @"Nimic concret";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    if (cell==nil)
    {
        NSLog(@"Se creeaza un nou cell");
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: identifier];
    }
    
    cell.imageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@.jpg", [self.coursesArray objectAtIndex:indexPath.row]]];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.coursesArray objectAtIndex:indexPath.row]];
    return cell;
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
