//
//  KHEPlaylist.h
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KHESong;

NS_ASSUME_NONNULL_BEGIN

@interface KHEPlaylist : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong, readonly) NSArray* songs;

- (instancetype) initWithName:(NSString*)name songs:(NSArray*)songs;

-(void) addSongsObject:(KHESong *)object;
-(void) removeSongsObject:(KHESong *)object;
@end

NS_ASSUME_NONNULL_END
