//
//  CricketerListViewController.m
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "CricketerListViewController.h"
#import "CricketerDataController.h"
#import "CricketerModel.h"
#import "ImageViewController.h"


#import "DatabaseController.h"
@interface CricketerListViewController ()

@end

@implementation CricketerListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  //  CricketerDataController *datacontroller = [[CricketerDataController alloc]init];
    
 //   playerData = [datacontroller getAllPlayerData];
    
    
    DatabaseController *dbcontroller =[[DatabaseController alloc]init];
    playerData = [dbcontroller getAllPlayerDatafromDB];
    
    [[NSUserDefaults standardUserDefaults] setObject:((CricketerModel*)[playerData objectAtIndex:0]).playerName  forKey:@"firstplayer"];
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return playerData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger row = indexPath.row;
    CricketerModel *playercell = [playerData objectAtIndex:row];
    
    cell.textLabel.text =playercell.playerName;
    cell.detailTextLabel.text = playercell.playerInfo;
    cell.imageView.image = playercell.playerImage;

    
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    ImageViewController *imageController = [segue destinationViewController];
    imageController.currentData = [playerData objectAtIndex:
                                   [self.tableView indexPathForSelectedRow].row];
    
    [imageController setImageSource:self];
    
    
    [imageController setNumberimage:self];
    
    
}


-(UIImage *) giveImagetwo : (ImageViewController *) cntr imgAtIndex :(NSInteger) idx
{
   //self.title = cntr.labeldata;
return [[playerData objectAtIndex:idx] playerImage] ;
}


-(NSString *)giveNumber :(ImageViewController *)cntr : (NSString*) labeltext
{
    NSLog(@"%@",labeltext);
    self.title = labeltext;
    return @"Saku";
}
@end
