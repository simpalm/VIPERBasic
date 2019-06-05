//
//  AlbumView.m
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumView.h"
#import "AlbumPresenter.h"
#import "Constants.h"

@interface AlbumView ()

@end

@implementation AlbumView

#pragma Mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = SCREEN_TITLE;
    [self.activityIndicator startAnimating];
    [self.presenter startFetchingAlbum];
}

#pragma mark - Album View Delegates Method
- (void)showErrorMessageWithTitle:(NSString *)title message:(NSString *)message{
    [self.activityIndicator stopAnimating];

    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:ALERT_VIEW_OK_BUTTON style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)showAlbumList:(NSMutableArray *)resultArray {
    self.albumArray = [[NSMutableArray alloc]initWithArray:resultArray];
   
    dispatch_async(dispatch_get_main_queue(), ^{
        // do work here
        [self.activityIndicator stopAnimating];
        [self.albumTableView reloadData];
    });
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view cont
 @end
 roller.
 }
 */
#pragma mark  - Table View Data Source And Delegates
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = ALBUM_CELL_IDENTIFIER;
    AlbumTableCell * cell;
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    AlbumEntity *album = [self.albumArray objectAtIndex:indexPath.row];
    [cell initializeCell:cell withAlbumDetails:album];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.albumArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.presenter showAlbumDetailswith:[self.albumArray objectAtIndex:indexPath.row] andViewController:self];
}

@end
