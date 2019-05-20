//
//  KHESong.m
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import "KHESong.h"

@implementation KHESong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if(self) {
        _title = title;
        _artist = artist;
    }
    return self;
}

@end
