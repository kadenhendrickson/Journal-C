//
//  KHESongListTableViewController.h
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KHEPlaylist.h"

NS_ASSUME_NONNULL_BEGIN

@interface KHESongListTableViewController : UITableViewController

@property (nonatomic, strong) KHEPlaylist *playlist;

@end

NS_ASSUME_NONNULL_END
