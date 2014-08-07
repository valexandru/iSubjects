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
    if (self.coursesArray==nil)
    {
        self.coursesArray = [[NSMutableArray alloc] init];
    }
    [self.coursesArray addObject: @"Fizica"];
    [self.coursesArray addObject: @"Istorie"];
    [super viewDidLoad];
    
    self.courses.separatorStyle = UITableViewCellSeparatorStyleNone;
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

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Deselecting the row
    [tableView deselectRowAtIndexPath:indexPath animated: YES];
    
    //Selecting the view controller
    id vc= [[NSClassFromString([NSString stringWithFormat:@"%@ViewController", [self.coursesArray objectAtIndex:indexPath.row]]) alloc] init];
    NSLog(@"%@",vc);
    
    //Setting tranzition
    [vc setModalTransitionStyle: UIModalTransitionStyleFlipHorizontal];

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
