//
//  ImageViewController.h
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CricketerModel.h"

@class ImageViewController;
@protocol Imgprotocol

-(UIImage *) giveImagetwo : (ImageViewController *) cntr imgAtIndex :(NSInteger) idx;


@end

@protocol nextImage

-(NSString *)giveNumber :(ImageViewController *)cntr : (NSString*) labeltext;

@end
@interface ImageViewController : UIViewController
{
    __weak IBOutlet UILabel *label1;
    __weak IBOutlet UIImageView *playerimage;
   
}
- (IBAction)pinchgesture:(id)sender;
- (IBAction)pichgesture2:(id)sender;

@property (nonatomic,strong) NSString *labeldata;
@property (nonatomic,strong) CricketerModel *currentData; //exposing outside to the source controller


@property (nonatomic,assign) id <Imgprotocol> imageSource;
- (IBAction)next:(id)sender;
@property (nonatomic,assign) id <nextImage> numberimage;
@end
