//
//  Utils.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utils : NSObject

//Save image in cache / Get Images from cache
+ (void) saveImageInCache:(UIImage *)image uniquePath:(NSString*)uniquePath urlImg:(NSString*)urlImg;

+ (UIImage *)getImageFromCache:(NSString*)uniquePath;
+ (void)makeViewCornerBound:(UIView*)view;

@end

NS_ASSUME_NONNULL_END
