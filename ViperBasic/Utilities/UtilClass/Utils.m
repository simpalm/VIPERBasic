//
//  Utils.m
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "Utils.h"
#import "Constants.h"

@implementation Utils



+(void) saveImageInCache:(UIImage *) image uniquePath:(NSString*)uniquePath  urlImg:(NSString*)urlImg{
    
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    NSData * binaryImageData = UIImagePNGRepresentation(image);
    if(binaryImageData != nil){
        [binaryImageData writeToFile:[basePath stringByAppendingPathComponent:uniquePath] atomically:YES];
    }
}

+ (UIImage *)getImageFromCache:(NSString*)uniquePath{
    
    UIImage *image;
    // Check for a cached version
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    uniquePath = [basePath stringByAppendingString:uniquePath];
    if(uniquePath != nil){
        if([[NSFileManager defaultManager] fileExistsAtPath: uniquePath])
        {
            image = [UIImage imageWithContentsOfFile: uniquePath]; // this is the cached image
        }
        return image;
    }
    return nil;
}

+(void) makeViewCornerBound:(UIView*)view{
    
    view.layer.cornerRadius = CORNER_ROUNDED_RADIUS_VIEW;
    //    view.layer.borderColor = CORNER_BORDER_COLOR;
    view.layer.borderColor = [UIColor clearColor].CGColor;
    view.layer.borderWidth = CORNER_BORDER_COLOR_WIDTH;
    view.layer.masksToBounds = YES;
    
    //Need to test proper : Seems not working here
    view.layer.shadowColor = [UIColor clearColor].CGColor;
    view.layer.shadowOpacity = 0.8;
    view.layer.shadowRadius = 12;
    view.layer.shadowOffset = CGSizeMake(12.0f, 12.0f);
    
}

@end
