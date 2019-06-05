//
//  AlbumTableCell.h
//  ViperBasic
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlbumEntity.h"
#import "Utils.h"
NS_ASSUME_NONNULL_BEGIN
/* Custom Table Cell Properties*/
@interface AlbumTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *albumTitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *artistTitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *releaseDateLabel;
@property (nonatomic, weak) IBOutlet UIImageView *albumImage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *imageIndicatorView;

- (AlbumTableCell*) initializeCell: (AlbumTableCell*) cell withAlbumDetails:(AlbumEntity*)album;


@end

NS_ASSUME_NONNULL_END
