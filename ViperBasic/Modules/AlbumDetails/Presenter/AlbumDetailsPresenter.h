//
//  AlbumDetailsPresenter.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlbumDetailsViewProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AlbumDetailsPresenter : NSObject

@property (strong, nonatomic) AlbumEntity *albumData;
@property (weak, nonatomic) id<AlbumDetailsViewProtocol> view;

- (void)getAlbumDetails;
@end

NS_ASSUME_NONNULL_END
