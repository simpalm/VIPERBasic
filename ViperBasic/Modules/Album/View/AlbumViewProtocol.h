//
//  AlbumViewProtocol.h
//  ViperBasic
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/* Album View List Protocol */
@protocol AlbumViewProtocol <NSObject>
- (void)showAlbumList:(NSMutableArray*)resultArray;
- (void)showErrorMessageWithTitle:(NSString*)title message:(NSString*)message;
@end

NS_ASSUME_NONNULL_END
