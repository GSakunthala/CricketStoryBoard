//
//  DatabaseController.m
//  CricketStoryBoard
//
//  Created by Admin on 27/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DatabaseController.h"
#import "CricketerModel.h"

@implementation DatabaseController

-(NSArray *)getAllPlayerDatafromDB

{
    
  //  NSFileManager *FM =[NSFileManager defaultManager];
    
    
    NSMutableArray *playerDataArray = [[NSMutableArray alloc]init];
    //access the file
    
  //NSString *bundlePath =  [[NSBundle mainBundle]pathForResource:@"resources" ofType:@"bundle"];
    
   // NSBundle *mybundle = [[NSBundle mainBundle]initWithPath:bundlePath];
    
      NSString *filPath =  [[NSBundle mainBundle] pathForResource:@"PlayerDB" ofType:@"sqlite"];
    
    

   // NSBundle *resourceBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"bundlefilename" ofType:@"bundle"]];
   // [resourceBundle load];
    
    NSLog(@"%@",filPath);
    
    
    
    
    if(!(sqlite3_open([filPath UTF8String], &dbhandler) == SQLITE_OK))
    {
        NSLog(@"DB CONNECTIVITY ERROR-FAILED TO OPEN DB ");
    }
    
    
    sqlite3_stmt *statement;
    
    char *sqlquery ="SELECT * FROM playerinfo";
    if(!(sqlite3_prepare_v2(dbhandler,sqlquery,-1, &statement, NULL))== SQLITE_OK)
        
    {
        NSLog(@"FAield to prepare sttement ");
    }
    
    
    while(sqlite3_step(statement) == SQLITE_ROW)
    {
        CricketerModel *player = [[CricketerModel alloc] init];
    
        player.playerID  =sqlite3_column_int(statement, 0);
        
        NSString *name = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(statement, 1)];
        player.playerName  =name;
        
        NSData *dataWithBytes = [NSData dataWithBytes:sqlite3_column_blob(statement, 2) length:sqlite3_column_bytes(statement, 2)];
        player.playerImage = [[UIImage alloc]initWithData:dataWithBytes];
        
        NSString *info = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
        player.playerInfo =info;

      
        [playerDataArray addObject:player];
        
        
    }
    
    
    if(sqlite3_finalize(statement) != SQLITE_OK)
    {
        NSLog(@"failed to close statement");
        
    }
    if(sqlite3_close(dbhandler) != SQLITE_OK)
    {
       NSLog(@"failed to close databse");
    }

    
  //  playerDataArray = [[NSMutableArray alloc]initWithContentsOfFile:filPath];
  
    
    NSLog(@"%@",playerDataArray);
 
    
    return playerDataArray;
    
}

@end


