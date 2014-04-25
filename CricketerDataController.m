//
//  CricketerDataController.m
//  CricketStoryBoard
//
//  Created by Admin on 26/03/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "CricketerDataController.h"
#import "CricketerModel.h"
@implementation CricketerDataController


-(NSArray *)getAllPlayerData
{
    
    NSMutableArray *playerDataArray = [[NSMutableArray alloc]init];
    
    CricketerModel *player1 = [[CricketerModel alloc]init];
    
    [player1 setPlayerID:1];
    [player1 setPlayerName:@"Dhoni1"];
    [player1 setPlayerInfo:@"smiling Dhoni"];
    [player1 setPlayerImage:[UIImage imageNamed:@"d1.jpg"]];
    
    [playerDataArray addObject:player1];
    
    
    CricketerModel *player2 = [[CricketerModel alloc]init];
    
    [player2 setPlayerID:1];
    [player2 setPlayerName:@"Dhoni2"];
    [player2 setPlayerInfo:@"big smile Dhoni"];
    [player2 setPlayerImage:[UIImage imageNamed:@"d2.jpg"]];
    
    [playerDataArray addObject:player2];
    
    
    CricketerModel *player3 = [[CricketerModel alloc]init];
    
    [player3 setPlayerID:1];
    [player3 setPlayerName:@"Dhoni3"];
    [player3 setPlayerInfo:@"formal Dhoni"];
    [player3 setPlayerImage:[UIImage imageNamed:@"d3.jpg"]];
    
    [playerDataArray addObject:player3];
    
    
    
    CricketerModel *player4 = [[CricketerModel alloc]init];
    
    [player4 setPlayerID:1];
    [player4 setPlayerName:@"Dhoni4"];
    [player4 setPlayerInfo:@"casual Dhoni"];
    [player4 setPlayerImage:[UIImage imageNamed:@"d4.jpeg"]];
    
    [playerDataArray addObject:player4];

    
    CricketerModel *player5 = [[CricketerModel alloc]init];
    
    [player5 setPlayerID:1];
    [player5 setPlayerName:@"Dhoni5"];
    [player5 setPlayerInfo:@"playing Dhoni"];
    [player5 setPlayerImage:[UIImage imageNamed:@"d5.jpg"]];
    
    [playerDataArray addObject:player5];
    
    CricketerModel *player6= [[CricketerModel alloc]initWithId:6 :@"Dhoni6" :@"Worldcup trophy" :[UIImage imageNamed:@"d6.jpg"]];
    
    [playerDataArray addObject:player6];
    
  //  NSLog(@"%@",playerDataArray);

    
    return playerDataArray;
}


@end
