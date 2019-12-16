//
//  SEGAurycSDKIntegration.m
//  Pods-Segment-AurycSDK-iOS_Example
//
//  Created by Alcides Zelaya on 12/16/19.
//

#import "SEGAurycSDKIntegration.h"
#import <AurycSDK/Auryc.h>

@implementation SEGAurycSDKIntegration

- (instancetype)initWithSettings:(NSDictionary *)settings
{
    if (self = [super init]) {
        self.settings = settings;
        
//        NSString *siteId = [settings objectForKey:@"aurycsdk_siteid"];
//        NSString *accessToken = [settings objectForKey:@"aurycsdk_acess_token"];
//        NSNumber *dev = [settings objectForKey:@"aurycsdk_dev"];
        
        NSString *siteId = [settings objectForKey:@"clevertap_account_id"];
        NSString *accessToken = [settings objectForKey:@"clevertap_account_token"];
        NSNumber *dev = [NSNumber numberWithBool:YES];
        
        // uncomment for dev
//        siteId = @"683-ios-sdk-testing-appcom";
//        accessToken = @"2fce833906813c50c736d874db0e0bfb";
//        dev = [NSNumber numberWithBool:YES];
        
        
        if (![siteId isKindOfClass:[NSString class]] || [siteId length] == 0 || ![accessToken isKindOfClass:[NSString class]] || [accessToken length] == 0) {
            return nil;
        }
        
        if ([NSThread isMainThread]) {
            [self launchWithSiteId:siteId token:accessToken dev:dev.boolValue];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                [self launchWithSiteId:siteId token:accessToken dev:dev.boolValue];
            });
        }
    }
    
    return self;
}

- (void)launchWithSiteId:(NSString *)siteId token:(NSString *)token dev:(BOOL)dev {
    [Auryc initialize:token siteId:siteId development:dev];
}

- (void)track:(SEGTrackPayload *)payload {
    [[Auryc mainInstance] track:payload.event properties:payload.properties];
}

- (void)identify:(SEGIdentifyPayload *)payload {
    [[Auryc mainInstance] identify:payload.userId];
}
@end
