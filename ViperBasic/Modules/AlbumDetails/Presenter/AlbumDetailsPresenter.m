//
//  AlbumDetailsPresenter.m
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumDetailsPresenter.h"

@implementation AlbumDetailsPresenter

/* Presenter to View Protocols*/
- (void)getAlbumDetails{
    [_view renderAlbumData:self.albumData];
}

@end
