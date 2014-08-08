//
//  ChapterViewController.m
//  Aplicatie
//
//  Created by Alexandru Vochescu on 08/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "ChapterViewController.h"
#import "Lectii.h"

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

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //return numarul de sectiuni
    return self.lectii.lectii.count;
}

-(NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dict.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *a = [self.lectii.lectii valueForKey:self.titleChapter];
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
    
    NSDictionary *subchapterDict = [array objectAtIndex:indexPath.row];
    NSString *subchapter = [[subchapterDict allKeys] objectAtIndex:0];
    NSLog(@"DE AICI %@",subchapter);
    cell.textLabel.text = subchapter;
    return  cell;
    
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
