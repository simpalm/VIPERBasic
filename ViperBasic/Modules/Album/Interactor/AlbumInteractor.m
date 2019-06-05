//
//  AlbumInteractor.m
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumInteractor.h"
#import "Constants.h"
#import "AlbumEntity.h"
#import "Simpalm_ReachabilityManager.h"
@implementation AlbumInteractor

/* Interactor Method to get Data from API*/
- (void)fetchAlbum{
    __weak __typeof(self)weakSelf = self;
    [self.apiDataManager getAlbumList:^(id _Nullable response, BOOL success){
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        if([response isKindOfClass:[NSArray class]] && success){
            [strongSelf->_presenter albumFetchSuccess:(NSMutableArray*)response];
        }else if([response isKindOfClass:[NSString class]]){
            [strongSelf->_presenter albumFetchFailedWithTitle:ALERT_TITLE_ERROR message:[NSString stringWithFormat:@"%@",response]];
        }
    }];
}
@end
