//
//  AlbumInteractorOutPutProtocol.h
//  ViperBasic
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlbumEntity.h"

NS_ASSUME_NONNULL_BEGIN
/* Interactor to Presenter Protocol*/
@protocol AlbumInteractorOutPutProtocol <NSObject>
- (void)albumFetchSuccess:(NSMutableArray *)albumModelArray;
- (void)albumFetchFailedWithTitle:(NSString*)title message:(NSString*)message;
@end

NS_ASSUME_NONNULL_END
