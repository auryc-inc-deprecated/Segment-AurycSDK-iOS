//
//  SEGAurycSDKIntegration.h
//  Pods-Segment-AurycSDK-iOS_Example
//
//  Created by Alcides Zelaya on 12/16/19.
//


#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegration.h>

NS_ASSUME_NONNULL_BEGIN

@interface SEGAurycSDKIntegration : NSObject <SEGIntegration>

- (instancetype)initWithSettings:(NSDictionary *)settings;
@property(strong, nonatomic) NSDictionary *settings;

@end

NS_ASSUME_NONNULL_END
