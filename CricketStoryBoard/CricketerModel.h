//
//  CricketerModel.h
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CricketerModel : NSObject

@property (nonatomic,assign) NSInteger playerID;
@property (nonatomic,strong) NSString *playerName;
@property (nonatomic,strong) NSString *playerInfo;
@property (nonatomic,strong) UIImage *playerImage;


-(id) initWithId : (NSInteger) idname : (NSString *) _name : (NSString *) _info : (UIImage *) _image;
@end
