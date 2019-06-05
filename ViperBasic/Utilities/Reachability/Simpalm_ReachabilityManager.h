//
//  Simpalm_ReachabilityManager.h
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

@class Reachability;

#import <Foundation/Foundation.h>

@interface Simpalm_ReachabilityManager : NSObject

@property (strong, nonatomic) Reachability *reachability;

#pragma mark -
#pragma mark Shared Manager
+ (Simpalm_ReachabilityManager *)sharedManager;

#pragma mark -
#pragma mark Class Methods
+ (BOOL)isConnectedViaWWAN;
+ (BOOL)isConnectedViaWiFi;
+ (BOOL)isConnected;
+ (BOOL)isUnconnected;
@end
