//
//  InfoViewController.m
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "InfoViewController.h"
#import "ImageViewController.h"
@interface InfoViewController ()
{
    
    __weak IBOutlet UILabel *infolabel;
}

- (IBAction)back:(id)sender;

@end

@implementation InfoViewController

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
}

-(void) viewDidAppear:(BOOL)animated
{
    infolabel.text =   _currentData.playerInfo;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    ImageViewController *imageController = [segue destinationViewController];
//    imageController.currentData = _currentData;
//}

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
