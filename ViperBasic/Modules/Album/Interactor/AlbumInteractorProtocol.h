//
//  AlbumInteractorProtocol.h
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

/* Presenter to Interactor Protocol*/
@protocol AlbumInteractorProtocol <NSObject>
- (void)fetchAlbum;
@end

NS_ASSUME_NONNULL_END
