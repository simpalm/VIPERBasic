//
//  AlbumWireframeProtocol.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// Album View Wire Frame Protocol
@protocol AlbumWireframeProtocol <NSObject>
- (void)pushToViewControllerWithAlbumDetails:(AlbumEntity*)albumdetails  fromView:(UIViewController*)vc;

@end

NS_ASSUME_NONNULL_END
