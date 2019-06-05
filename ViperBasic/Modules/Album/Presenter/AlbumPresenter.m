//
//  AlbumPresenter.m
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumPresenter.h"

@implementation AlbumPresenter

#pragma mark - Interactor to Presenter Delegates
- (void)albumFetchFailedWithTitle:(NSString *)title message:(NSString *)message {
    [_view showErrorMessageWithTitle:title message:message];
}

- (void)albumFetchSuccess:(nonnull NSMutableArray *)albumModelArray {
    [_view showAlbumList:albumModelArray];
}
#pragma mark - Presenter to Interactor Delegates
- (void)startFetchingAlbum{
    [_interactor fetchAlbum];
}

#pragma Mark - Presneter to Album Details Wire Frame Protocol Method
- (void)showAlbumDetailswith:(AlbumEntity*)album andViewController:(UIViewController *)view{
    [_albumWireFrame pushToViewControllerWithAlbumDetails:album fromView:view];
}


@end
