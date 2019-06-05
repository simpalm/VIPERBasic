//
//  AlbumView.h
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlbumViewProtocol.h"
#import "AlbumTableCell.h"
#import "AlbumEntity.h"

@class AlbumPresenter;
@class AlbumWireframe;


NS_ASSUME_NONNULL_BEGIN

@interface AlbumView : UIViewController<UITableViewDelegate,UITableViewDataSource,AlbumViewProtocol>

@property (strong, nonatomic) AlbumPresenter *presenter;
@property (strong, nonatomic) NSMutableArray *albumArray;
@property (weak, nonatomic) IBOutlet UITableView *albumTableView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

NS_ASSUME_NONNULL_END
