//
//  DatabaseController.h
//  CricketStoryBoard
//
//  Created by Admin on 27/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"
@interface DatabaseController : NSObject

{
sqlite3* dbhandler;
}
-(NSArray *)getAllPlayerDatafromDB;
@end
