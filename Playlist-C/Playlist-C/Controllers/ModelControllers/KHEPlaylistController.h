//
//  KHEPlaylistController.h
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KHEPlaylist.h"
#import "KHESong.h"

NS_ASSUME_NONNULL_BEGIN

@interface KHEPlaylistController : NSObject

@property (nonatomic, strong, readonly) NSArray* playlists;

+ (KHEPlaylistController*) shared;

//create
- (void) createPlaylistWithName:(NSString*)name;

//delete
- (void) deletePlaylistWithName:(KHEPlaylist*)playlist;

//addsong to a playlist
- (void) addSongWithTitle:(NSString*)name andArtist:(NSString*)artist toPlaylist:(KHEPlaylist*)playlist;

//removesong from a playlist
- (void) removeSong:(KHESong*)song fromPlaylist:(KHEPlaylist*)playlist;

@end

NS_ASSUME_NONNULL_END
