//
//  AlbumDetailsRouter.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AlbumEntity.h"

@class AlbumDetailsVC;

NS_ASSUME_NONNULL_BEGIN

@interface AlbumDetailsRouter : NSObject
- (void)createAlbumDetailsModuleWith:(AlbumDetailsVC *)albumDetails andAlbum:(AlbumEntity *)album;
@end

NS_ASSUME_NONNULL_END
