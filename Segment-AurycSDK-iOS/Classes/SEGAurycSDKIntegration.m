//
//  SEGAurycSDKIntegration.m
//  Pods-Segment-AurycSDK-iOS_Example
//
//  Created by Alcides Zelaya on 12/16/19.
//

#import "SEGAurycSDKIntegration.h"

@implementation SEGAurycSDKIntegration

- (instancetype)initWithSettings:(NSDictionary *)settings
{
    if (self = [super init]) {
        self.settings = settings;
        
        NSString *siteId = [settings objectForKey:@"aurycsdk_siteid"];
        NSString *accessToken = [settings objectForKey:@"aurycsdk_acess_token"];
        
        if (![siteId isKindOfClass:[NSString class]] || [siteId length] == 0 || ![accessToken isKindOfClass:[NSString class]] || [accessToken length] == 0) {
            return nil;
        }
        
        if ([NSThread isMainThread]) {
            [self launchWithSiteId:siteId token:accessToken];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                [self launchWithSiteId:siteId token:accessToken];
            });
        }
    }
    
    return self;
}

- (void)launchWithSiteId:(NSString *)siteId token:(NSString *)token {
//    [CleverTap setCredentialsWithAccountID:accountID token:accountToken region:region];
//    [[CleverTap sharedInstance] notifyApplicationLaunchedWithOptions:nil];
}
@end
