//
//  ChapterViewController.m
//  Aplicatie
//
//  Created by Alexandru Vochescu on 08/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "ChapterViewController.h"
#import "Lectii.h"
#import "LessonViewController.h"
#import "TestViewController.h"

@interface ChapterViewController ()

@end

@implementation ChapterViewController

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
    // Do any additional setup after loading the view.
    self.lectii = [[Lectii alloc] init];
    [self.lectii initializare];
    self.titleForLayout.text = self.titleChapter;
    self.lessonsList.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.dict = [self.lectii.lectii objectForKey: self.titleChapter];

    self.title = self.titleChapter;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSArray *a = [self.lectii.lectii valueForKey:self.titleChapter];
    //return numarul de sectiuni
    return a.count;
}

-(NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *a = [self.lectii.lectii valueForKey:self.titleChapter];
    NSDictionary *subc = [a objectAtIndex:section];
    NSArray *array = [subc valueForKey:[[subc allKeys] objectAtIndex:0]];
    return array.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *a = [self.lectii.lectii valueForKey:self.titleChapter];
    NSLog(@"%@",a);
    NSDictionary *chapter = [a objectAtIndex:section];
    return [[chapter allKeys] objectAtIndex:0];
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *idetinfier = @"ceva id";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idetinfier];
    
    if( cell == nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idetinfier];
    }
    
    NSArray *a = [self.lectii.lectii valueForKey:self.titleChapter];
    NSDictionary *chapter = [a objectAtIndex:indexPath.section];
    NSString *key = [[chapter allKeys] objectAtIndex:0];
    NSArray *array = [chapter valueForKey:key];
    NSLog(@"%@ %ld",array,(long)indexPath.row);
    
    NSDictionary *subchapterDict = [array objectAtIndex:indexPath.row];
    NSString *subchapter = [[subchapterDict allKeys] objectAtIndex:0];
    //NSLog(@"DE AICI %@",supo bchapter);
    cell.textLabel.text = subchapter;
    return  cell;
    
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LessonViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"lesson-vc"];
    
    NSArray *a = [self.lectii.lectii valueForKey:self.titleChapter];
    NSDictionary *chapter = [a objectAtIndex:indexPath.section];
    NSString *key = [[chapter allKeys] objectAtIndex:0];
    NSArray *array = [chapter valueForKey:key];
  //  NSLog(@"%@ %ld",array,(long)indexPath.row);
    
    NSDictionary *subchapterDict = [array objectAtIndex:indexPath.row];
    NSString *subchapter = [[subchapterDict allKeys] objectAtIndex:0];
    //NSLog(@"%@\n%@",[[subchapterDict allKeys] objectAtIndex:0], subchapter);
    NSArray *arrayContent = [subchapterDict valueForKey: subchapter];
    if (![subchapter isEqual:@"Test"])
    {
        vc.titleView= subchapter;
    
        NSString *deflabel, *deftext;
    
        NSDictionary *def1 = [arrayContent objectAtIndex:0];
        deflabel = [[def1 allKeys] objectAtIndex:0];
        deftext = [def1 valueForKey: deflabel];
        vc.def1Name=deflabel;
        vc.def1=deftext;
    
        NSDictionary *def2 = [arrayContent objectAtIndex:1];
        deflabel = [[def2 allKeys] objectAtIndex:0];
        deftext = [def2 valueForKey: deflabel];
        vc.def2Name=deflabel;
        vc.def2=deftext;
    
        NSDictionary *descriere = [arrayContent objectAtIndex:2];
        deflabel = [[descriere allKeys] objectAtIndex:0];
        deftext = [descriere valueForKey: deflabel];
        vc.descriereName=deflabel;
        vc.descr=deftext;
        //NSLog(@"%@ %@",def2, deftext);
        
        NSDictionary *imagine = [arrayContent objectAtIndex:3];
        deflabel = [[imagine allKeys] objectAtIndex:0];
        deftext = [imagine valueForKey: deflabel];
        vc.imageName=deftext;
        
        NSDictionary *video = [arrayContent objectAtIndex:4];
        deflabel = [[video allKeys] objectAtIndex:0];
        deftext = [video valueForKey: deflabel];
        vc.videoName=deftext;
        //    vc.titleChapter = self.titleForLayout;
        [self.navigationController pushViewController:vc animated:YES];
    }
    else
    {
        TestViewController* testvc = [storyboard instantiateViewControllerWithIdentifier:@"test-vc"];
        testvc.titleView= subchapter;
        testvc.questions= arrayContent;
        [self.navigationController pushViewController:testvc animated:YES];
    }
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
