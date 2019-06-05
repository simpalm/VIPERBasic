//
//  APIDataManager.m
//  ViperBasic
//
//  Created by Mac on 17/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "APIDataManager.h"
#import "Constants.h"
#import "Simpalm_ReachabilityManager.h"
#import "AlbumEntity.h"

@implementation APIDataManager

// Call Service to get album list
- (void)getAlbumList:(albimListBlock)completion {
    if([Simpalm_ReachabilityManager isConnected]){
        NSURL *url = [self albumURL];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setHTTPMethod:@"GET"];
        [request setURL:url];
        [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
          ^(NSData * _Nullable data,
            NSURLResponse * _Nullable response,
            NSError * _Nullable error) {
              
              if (error == nil){
                  
                  NSError *e = nil;
                  NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableContainers error: &e];
                  NSMutableArray *resultArray = [[NSMutableArray alloc]init];
                  for (NSDictionary *dict in [[jsonArray valueForKey:@"feed"] valueForKey:@"results"]){
                      AlbumEntity *album = [[AlbumEntity alloc]initWithDict:dict];
                      [resultArray addObject:album];
                  }
                  completion(resultArray,true);
                  
              }else{
                  completion(ALERT_ERROR_MESSAGE,false);
              }
          }] resume];
    }else{
        completion(NO_INTERNET_CONNECTION_MESSAGE,false);
    }
}

- (NSURL*) albumURL {
    return [NSURL URLWithString:ALBUM_URL];
}



@end
