//
//  KHEPlaylistController.m
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import "KHEPlaylistController.h"

@interface KHEPlaylistController()

@property (nonatomic, strong, readwrite) NSMutableArray* internalPlaylist;

@end

@implementation KHEPlaylistController

+ (KHEPlaylistController*)shared
{
    static KHEPlaylistController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [KHEPlaylistController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if(self){
        _internalPlaylist = [[NSMutableArray alloc] init];
    }
    return self;
    
}

-(NSArray *)playlists{
    return self.internalPlaylist;
}

- (void)createPlaylistWithName:(NSString *)name
{
    KHEPlaylist* newPlaylist = [[KHEPlaylist alloc] initWithName:name songs:[NSMutableArray new]];
    [self.internalPlaylist addObject:newPlaylist];
}

- (void)deletePlaylistWithName:(KHEPlaylist *)playlist
{
    [self.internalPlaylist removeObject:playlist];
}

- (void)addSongWithTitle:(NSString *)name andArtist:(NSString *)artist toPlaylist:(KHEPlaylist *)playlist
{
    KHESong* newSong = [[KHESong alloc] initWithTitle:name artist:artist];
    [playlist addSongsObject:newSong];
}

- (void)removeSong:(KHESong *)song fromPlaylist:(KHEPlaylist *)playlist
{
    [playlist removeSongsObject:song];
}

@end
