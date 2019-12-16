//
//  SEGAurycSDKIntegrationFactory.m
//  Segment-AurycSDK-iOS
//
//  Created by Alcides Zelaya on 12/16/19.
//

#import "SEGAurycSDKIntegrationFactory.h"
#import "SEGAurycSDKIntegration.h"

@implementation SEGAurycSDKIntegrationFactory

+ (instancetype)instance {
    static dispatch_once_t once;
    static SEGAurycSDKIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    self = [super init];
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics {
    return [[SEGAurycSDKIntegration alloc] initWithSettings:settings];
}

- (NSString *)key {
    return @"AurycSDK-iOS";
}


@end
