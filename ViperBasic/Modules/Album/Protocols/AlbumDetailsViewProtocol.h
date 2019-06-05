//
//  AlbumDetailsViewProtocol.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlbumEntity.h"
NS_ASSUME_NONNULL_BEGIN
/* Album Details Presenter to View Protocol*/
@protocol AlbumDetailsViewProtocol <NSObject>
- (void)renderAlbumData:(AlbumEntity *)album;
@end

NS_ASSUME_NONNULL_END
