//
//  AlbumEntity.h
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
/* Set JSON RESPONSE OBJECT Mapper*/
@interface AlbumEntity : NSObject
@property(strong, nonatomic) NSString * strArtistId;
@property(strong, nonatomic) NSString * strArtistName;
@property(strong, nonatomic) NSString * strCopyRight;
@property(strong, nonatomic) NSString * strName;
@property(strong, nonatomic) NSString * strReleaseDate;
@property(strong, nonatomic) NSString * strArtistURL;
@property(strong, nonatomic) NSString * strAlbumImageURL;
@property(strong, nonatomic) NSString * strAlbumId;

- (instancetype) initWithDict:(NSDictionary*) dictionary;
@end
NS_ASSUME_NONNULL_END
