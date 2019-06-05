//
//  Simpalm_ReachabilityManager.m
//  ViperBasic
//
//  Created by Mac on 15/05/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

#import "Simpalm_ReachabilityManager.h"
#import "Reachability.h"

@implementation Simpalm_ReachabilityManager

#pragma mark -
#pragma mark Default Manager

+ (Simpalm_ReachabilityManager *)sharedManager {
    static Simpalm_ReachabilityManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self alloc] init];
    });
    return _sharedManager;
}

#pragma mark -
#pragma mark Memory Management
- (void)dealloc {
    // Stop Notifier
    if (_reachability) {
        [_reachability stopNotifier];
    }
}

#pragma mark -
#pragma mark Class Methods
+ (BOOL)isConnected {
    return [[[Simpalm_ReachabilityManager sharedManager] reachability] isReachable];
}

+ (BOOL)isUnconnected {
    return ![[[Simpalm_ReachabilityManager sharedManager] reachability] isReachable];
}

+ (BOOL)isConnectedViaWWAN {
    return [[[Simpalm_ReachabilityManager sharedManager] reachability] isReachableViaWWAN];
}

+ (BOOL)isConnectedViaWiFi {
    return [[[Simpalm_ReachabilityManager sharedManager] reachability] isReachableViaWiFi];
}

#pragma mark -
#pragma mark Private Initialization
- (id)init {
    self = [super init];
    
    if (self) {
        self.reachability = [Reachability reachabilityForInternetConnection];
        // Start Monitoring
        [self.reachability startNotifier];
    }
    
    return self;
}

@end
