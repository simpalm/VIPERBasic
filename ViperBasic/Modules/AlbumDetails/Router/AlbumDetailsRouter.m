//
//  AlbumDetailsRouter.m
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumDetailsRouter.h"
#import "AlbumDetailsPresenter.h"
#import "AlbumDetailsVC.h"

@interface AlbumDetailsRouter() {
    AlbumDetailsPresenter *presenter;
}
@end

@implementation AlbumDetailsRouter

/* Intializer of Album details Presneter, Protocols */
- (void)createAlbumDetailsModuleWith:(AlbumDetailsVC *)albumDetailsView andAlbum:(AlbumEntity *)album{
    
    presenter = [[AlbumDetailsPresenter alloc] init];
    presenter.albumData = album;
    albumDetailsView.presenter = (id<AlbumDetailsViewProtocol>)presenter;
    presenter.view = (id<AlbumDetailsViewProtocol>)albumDetailsView;
 
}
@end
