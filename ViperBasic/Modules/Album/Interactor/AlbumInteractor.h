//
//  AlbumInteractor.h
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "AlbumInteractorOutPutProtocol.h"
#import "AlbumEntity.h"
#import "APIDataManagerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlbumInteractor : NSObject
@property (weak, nonatomic) id<AlbumInteractorOutPutProtocol> presenter;
@property (nonatomic, strong) id <APIDataManagerProtocol> apiDataManager;
@property (nonatomic) AlbumEntity* entity;
- (void)fetchAlbum;
@end
NS_ASSUME_NONNULL_END

