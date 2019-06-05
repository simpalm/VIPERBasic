//
//  AlbumDetailsVC.m
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumDetailsVC.h"
#import "Utils.h"

@interface AlbumDetailsVC ()

@end

@implementation AlbumDetailsVC

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_presenter getAlbumDetails];
}
#pragma Mark - Album List Protocol Method
- (void)renderAlbumData:(AlbumEntity *)album{
    [Utils makeViewCornerBound:self.storeButton];
    self.title = album.strName;
    self.albumTitleLabel.text = album.strName;
    self.artistTitleLabel.text = album.strArtistName;
    self.copyrightLabel.text = album.strCopyRight;
    self.releaseDateLabel.text = album.strReleaseDate;
    appStoreURL = album.strArtistURL;
    NSURL *imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@",album.strAlbumImageURL]];
    NSString * albumId = album.strAlbumId;
    if (albumId) {
        if (imageURL) {
            /* set weak self*/
            __weak __typeof(self)weakSelf = self;
            __block UIImage *image = nil;
            /*set strong self*/
            __strong __typeof(weakSelf)strongSelf = weakSelf;
            
            image = [Utils getImageFromCache:albumId];
            if (image) {
                [strongSelf.albumImage setImage:image];
                
            }else{
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
                    image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageURL]];
                    if (image) {
                        
                        [[NSOperationQueue mainQueue] addOperationWithBlock:^(void){
                            [strongSelf.albumImage setImage:image];
                        }];
                        
                        [Utils saveImageInCache:image uniquePath:albumId urlImg:[NSString stringWithFormat:@"%@",album.strAlbumImageURL]];
                    }
                });
            }
        }
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma Mark - IBActions
- (IBAction)actionOnStoreLink:(id)sender {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@",appStoreURL]];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            //NSLog(@"Opened url");
        }
    }];

}


@end
