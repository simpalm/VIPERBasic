//
//  AlbumDetailsVC.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlbumDetailsRouter.h"
#import "AlbumDetailsPresenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlbumDetailsVC : UIViewController<AlbumDetailsViewProtocol>
{
    NSString *appStoreURL;
}
@property (strong, nonatomic) AlbumDetailsPresenter *presenter;

@property (weak, nonatomic) IBOutlet UIImageView *albumImage;
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *copyrightLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;
@property (weak, nonatomic) IBOutlet UIButton *storeButton;
- (IBAction)actionOnStoreLink:(id)sender;

@end

NS_ASSUME_NONNULL_END
