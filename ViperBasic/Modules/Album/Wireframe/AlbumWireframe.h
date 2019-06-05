//
//  AlbumWireframe.h
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AlbumView.h"
#import "AlbumDetailsRouter.h"


NS_ASSUME_NONNULL_BEGIN

/*Album View Wireframe class*/
@interface AlbumWireframe : NSObject

- (AlbumView *)createAlbumModule;
- (void)pushToViewControllerWithAlbumDetails:(AlbumEntity*)albumdetails  fromView:(UIViewController*)vc;

@end

NS_ASSUME_NONNULL_END
