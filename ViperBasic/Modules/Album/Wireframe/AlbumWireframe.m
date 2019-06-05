//
//  AlbumWireframe.m
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumWireframe.h"
#import "AlbumInteractor.h"
#import "AlbumEntity.h"
#import "AlbumPresenter.h"
#import "AlbumView.h"
#import "AlbumDetailsVC.h"
#import "Constants.h"
#import "APIDataManager.h"
#import "APIDataManagerProtocol.h"

@interface AlbumWireframe() {
    AlbumPresenter *presenter;
    AlbumInteractor *interactor;
    AlbumEntity *entity;
    AlbumDetailsRouter *albumDetailWireframe;
    APIDataManager *apiDataManager;
}

@end


@implementation AlbumWireframe

/*Initialize gateway from App delegate*/
- (AlbumView *)createAlbumModule{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:STORYBOARD_NAME
        bundle: nil];
    
    AlbumView *view = (AlbumView*)[mainStoryboard
                                                       instantiateViewControllerWithIdentifier: ALBUM_VIEW_IDENTIFIER];
    presenter = [[AlbumPresenter alloc] init];
    interactor = [[AlbumInteractor alloc] init];
    entity = [[AlbumEntity alloc] init];
    albumDetailWireframe = [[AlbumDetailsRouter alloc]init];
    apiDataManager = [[APIDataManager alloc]init];
    view.presenter = presenter;
    presenter.view = view;
    presenter.albumWireFrame = (id<AlbumWireframeProtocol>)self;
    presenter.interactor = (id<AlbumInteractorProtocol>)interactor;
    interactor.presenter = presenter;
    interactor.entity = entity;
    interactor.apiDataManager = (id<APIDataManagerProtocol>)apiDataManager;
    return view;
}

/*Push to Album Detail Method*/
- (void)pushToViewControllerWithAlbumDetails:(AlbumEntity*)albumdetails  fromView:(UIViewController*)vc{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:STORYBOARD_NAME
        bundle: nil];
    
    AlbumDetailsVC *view = (AlbumDetailsVC*)[mainStoryboard
                                   instantiateViewControllerWithIdentifier: ALBUM_DETAIL_IDENTIFIER];
    [albumDetailWireframe createAlbumDetailsModuleWith:view andAlbum:albumdetails];
    [vc.navigationController pushViewController:view animated:YES];
}

@end
