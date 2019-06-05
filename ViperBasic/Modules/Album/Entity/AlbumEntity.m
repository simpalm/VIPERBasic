//
//  AlbumEntity.m
//  ViperBasics
//
//  Created by Mac on 14/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "AlbumEntity.h"


@implementation AlbumEntity
@synthesize strName;
@synthesize strArtistId;
@synthesize strArtistName;
@synthesize strCopyRight;
@synthesize strReleaseDate;
@synthesize strArtistURL;
@synthesize strAlbumImageURL;
@synthesize strAlbumId;

/* initialize method */
- (instancetype) initWithDict:(NSDictionary*) dictionary {
    if (self = [self init]) {
        self.strName = dictionary[@"name"];
        self.strArtistId = dictionary[@"artistId"];
        self.strArtistName = dictionary[@"artistName"];
        self.strCopyRight = dictionary[@"copyright"];
        self.strReleaseDate = dictionary[@"releaseDate"];
        self.strAlbumImageURL = dictionary[@"artworkUrl100"];
        self.strArtistURL = dictionary[@"url"];
        self.strAlbumId = dictionary[@"id"];

    }
    return self;
}


@end
