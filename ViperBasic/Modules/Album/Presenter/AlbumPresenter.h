//
//  AlbumPresenter.h
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AlbumViewProtocol.h"
#import "AlbumInteractorProtocol.h"
#import "AlbumInteractorOutPutProtocol.h"
#import "AlbumWireframeProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AlbumPresenter : NSObject<AlbumInteractorOutPutProtocol>

@property (weak, nonatomic) id<AlbumViewProtocol> view;
@property (weak, nonatomic) id<AlbumInteractorProtocol> interactor;
@property (weak, nonatomic) id<AlbumWireframeProtocol> albumWireFrame;
- (void)startFetchingAlbum;
- (void)showAlbumDetailswith:(AlbumEntity*)album andViewController:(UIViewController *)view;
@end

NS_ASSUME_NONNULL_END
