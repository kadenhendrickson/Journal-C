//
//  KHESongListTableViewController.m
//  Playlist-C
//
//  Created by Kaden Hendrickson on 5/20/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

#import "KHESongListTableViewController.h"
#import "KHEPlaylist.h"
#import "KHESong.h"
#import "KHEPlaylistController.h"

@interface KHESongListTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *artistTextField;
@property (weak, nonatomic) IBOutlet UITextField *songNameTextField;


@end

@implementation KHESongListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)saveButtonTapped:(id)sender {
   [[KHEPlaylistController shared] addSongWithTitle:self.songNameTextField.text andArtist:self.artistTextField.text toPlaylist:self.playlist];
    [self.tableView reloadData];
    self.artistTextField.text = @"";
    self.songNameTextField.text = @"";
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.playlist.songs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"songCell" forIndexPath:indexPath];
    
    KHESong* song = [self.playlist.songs objectAtIndex:indexPath.row];
    cell.textLabel.text = [song title];
    cell.detailTextLabel.text = [song artist];
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
