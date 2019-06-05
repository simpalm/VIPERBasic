//
//  APIDataManagerProtocol.h
//  ViperBasic
//
//  Created by Mac on 17/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^albimListBlock)(id _Nullable albumList, BOOL success);
@protocol APIDataManagerProtocol <NSObject>

/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */
- (void) getAlbumList:(albimListBlock)completion;
@end

NS_ASSUME_NONNULL_END
