//
//  CZPlayerScore.m
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import "CZPlayerScore.h"

@implementation CZPlayerScore

- (id)initWithSkillLevel:(NSUInteger)skillLevel {
    self = [super init];
    
    [self setSkillLevel:skillLevel];
    [self setCurrentScore:0];
    
    return self;
}

- (void)increaseSkillLevel {
    if ([self skillLevel] < 9) {
        [self setSkillLevel:[self skillLevel] + 1];
    }
}

- (void)decreaseSkillLevel {
    if ([self skillLevel] > 1) {
        [self setSkillLevel:[self skillLevel] - 1];
    }
}

- (NSUInteger)pointsToWin {
    switch ([self skillLevel]) {
        case 1:
            return 14;
        case 2:
            return 19;
        case 3:
            return 25;
        case 4:
            return 31;
        case 5:
            return 38;
        case 6:
            return 46;
        case 7:
            return 55;
        case 8:
            return 65;
        case 9:
            return 75;
        default:
            return 0;
    }
}

@end
