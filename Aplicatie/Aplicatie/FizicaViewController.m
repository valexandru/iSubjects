//
//  FizicaViewController.m
//  Aplicatie
//
//  Created by Alexandru Vochescu on 07/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "FizicaViewController.h"
#import "ChapterViewController.h"

@interface FizicaViewController ()

@end

@implementation FizicaViewController

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
    if (self.chaptersArray==nil)
    {
        self.chaptersArray = [[NSMutableArray alloc] init];
    }
    [self.chaptersArray addObject: @"Termodinamica"];
    [self.chaptersArray addObject: @"Mecanica"];
    [self.chaptersArray addObject: @"Optica"];
    [self.chaptersArray addObject: @"Electricitate"];
    [super viewDidLoad];
    self.chapters.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.title = @"Fizica";
    // Do any additional setup after loading the view.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.chaptersArray.count;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.titleForLayout = [self.chaptersArray objectAtIndex: indexPath.row];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ChapterViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"chapter-vc"];
    vc.titleChapter = self.titleForLayout;
    [self.navigationController pushViewController:vc animated:YES];
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"FizicaViewController: Ma intreaba de linia: %d", indexPath.row);
    static NSString* identifier = @"Chapter identifier";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    if (cell==nil)
    {
        NSLog(@"Se creeaza un nou cell");
        cell=[[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: identifier];
    }
    
    cell.imageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@.jpg", [self.chaptersArray objectAtIndex: indexPath.row]]];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
    cell.textLabel.text = [NSString stringWithFormat: @"%@", [self.chaptersArray objectAtIndex:indexPath.row]];
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    ChapterViewController* vc= segue.destinationViewController;
//    
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}

@end
