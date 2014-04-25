//
//  CricketerModel.m
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "CricketerModel.h"

@implementation CricketerModel


-(id) initWithId : (NSInteger) idname : (NSString *) _name : (NSString *) _info : (UIImage *) _image
{

   
    if(self = [super init])
    {
    
    _playerID = idname;
    _playerName = _name;
    _playerInfo = _info;
    _playerImage = _image;
    
    }
    return self;
    
}



@end
