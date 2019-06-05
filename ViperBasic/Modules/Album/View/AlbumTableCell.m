//
//  AlbumTableCell.m
//  ViperBasic
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumTableCell.h"

@implementation AlbumTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (AlbumTableCell*) initializeCell: (AlbumTableCell*) cell withAlbumDetails:(AlbumEntity*)album{
    NSURL *imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@",album.strAlbumImageURL]];
    [Utils makeViewCornerBound:self.albumImage];
    self.albumTitleLabel.text = album.strName;
    self.artistTitleLabel.text = album.strArtistName;
    NSString * albumId = album.strAlbumId;
    if (albumId) {
        if (imageURL) {
            __weak __typeof(self)weakSelf = self;
            __block UIImage *image = nil;
            __strong __typeof(weakSelf)strongSelf = weakSelf;
            [strongSelf.imageIndicatorView startAnimating];
            /*Get Image from Directory*/
            image = [Utils getImageFromCache:albumId]; 
            if (image) {
                [strongSelf.albumImage setImage:image];
                [strongSelf.imageIndicatorView stopAnimating];
            }else{
               /* Set image on Umag view and save it locally. */ dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
                    image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageURL]];
                    if (image) {
                        
                        [[NSOperationQueue mainQueue] addOperationWithBlock:^(void){
                            [strongSelf.albumImage setImage:image];
                            [strongSelf.imageIndicatorView stopAnimating];
                        }];
                        
                        [Utils saveImageInCache:image uniquePath:albumId urlImg:[NSString stringWithFormat:@"%@",album.strAlbumImageURL]];
                    }
                });
            }
        }
    }
    return cell;
}

@end
