//
//  KHEPlaylistListTableViewController.m
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//
#import "KHEPlaylistListTableViewController.h"
#import "KHEPlaylistController.h"
#import "KHESongListTableViewController.h"


@interface KHEPlaylistListTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;



@end

@implementation KHEPlaylistListTableViewController


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (IBAction)addButtonTapped:(UIBarButtonItem *)sender {
    [[KHEPlaylistController shared] createPlaylistWithName:self.nameTextField.text];
    
    [self.tableView reloadData];
    self.nameTextField.text = @"";
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return KHEPlaylistController.shared.playlists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    
    KHEPlaylist* playlist = [[[KHEPlaylistController shared] playlists] objectAtIndex:indexPath.row];
    cell.textLabel.text = [playlist name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", playlist.songs.count];
    // Configure the cell...
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"toDetailVC"]) {
        NSIndexPath* indexPath = self.tableView.indexPathForSelectedRow;
        KHESongListTableViewController* destinationVC = [segue destinationViewController];
        KHEPlaylist* playlist = [[[KHEPlaylistController shared] playlists] objectAtIndex:indexPath.row];
        destinationVC.playlist = playlist;
        
    }

}


@end
