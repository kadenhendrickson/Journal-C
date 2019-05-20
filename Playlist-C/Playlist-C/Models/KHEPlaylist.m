//
//  KHEPlaylist.m
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import "KHEPlaylist.h"

@interface KHEPlaylist()

@property (nonatomic, strong) NSMutableArray* internalSongs;

@end

@implementation KHEPlaylist

- (instancetype) initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if(self) {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}


- (void) addSongsObject:(KHESong *)object
{
    [self.internalSongs addObject:object];
}

- (void) removeSongsObject:(KHESong *)object
{
    [self.internalSongs removeObject:object];
}

- (NSArray *)songs
{
    return self.internalSongs;
}

@end
