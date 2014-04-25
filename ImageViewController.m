//
//  ImageViewController.m
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "ImageViewController.h"
#import "InfoViewController.h"

@interface ImageViewController ()
{
    
}
@end

@implementation ImageViewController

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
    
   
    
    self.title =  [[NSUserDefaults standardUserDefaults] objectForKey:@"firstplayer"];
    
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
   // self.title = _currentData.playerName;
    self.title =  [[NSUserDefaults standardUserDefaults] objectForKey:@"firstplayer"];

    playerimage.image = _currentData.playerImage;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    InfoViewController *infoController = [segue destinationViewController];
    infoController.currentData = _currentData;
    
}
- (IBAction)next:(id)sender {
    
    //_labeldata = @"returnong Dhoni";
    playerimage.image = [self.imageSource giveImagetwo:self imgAtIndex:2];
    label1.text = [self.numberimage giveNumber:self:self.title];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
- (IBAction)pinchgesture:(id)sender {
    
    NSLog(@"piched on");
    
}

- (IBAction)pichgesture2:(id)sender {
    NSLog(@"piched 2 on");
}
@end
