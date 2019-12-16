//
//  SEGAurycSDKIntegrationFactory.h
//  Segment-AurycSDK-iOS
//
//  Created by Alcides Zelaya on 12/16/19.
//

#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegrationFactory.h>

NS_ASSUME_NONNULL_BEGIN

@interface SEGAurycSDKIntegrationFactory : NSObject<SEGIntegrationFactory>

+ (instancetype)instance;

@end

NS_ASSUME_NONNULL_END
