//
//  COScore.m
//  ScoreKeeper
//
//  Created by James Sodini on 7/1/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COScore.h"
#import "COPlayer.h"

@implementation COScore

@synthesize player;
@synthesize points;

- (id)initWithPlayer:(COPlayer *)shooter {
    if (self = [super init]) {
        [self setPlayer:shooter];
        [self setPoints:0];
    }
    
    return self;
}

- (void)addPoint {
    points++;
}

- (void)subtractPoint {
    if (points == 0) {
        return;
    }
    
    points--;
}

@end