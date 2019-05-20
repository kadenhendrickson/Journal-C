//
//  KHESong.h
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KHESong : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* artist;

- (instancetype) initWithTitle:(NSString*)title artist:(NSString*)artist;

@end

NS_ASSUME_NONNULL_END
