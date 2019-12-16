//
//  ARYCViewController.m
//  Segment-AurycSDK-iOS
//
//  Created by azelaya6 on 12/16/2019.
//  Copyright (c) 2019 azelaya6. All rights reserved.
//

#import "ARYCViewController.h"
#import <Analytics/SEGAnalytics.h>

@interface ARYCViewController ()

@end

@implementation ARYCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[SEGAnalytics sharedAnalytics] track:@"SEGAurycSDK Integration Track Test" properties:@{@"Property 1": @"value 1",
                                                                                             @"Number Property": [NSNumber numberWithFloat:19.89]
    }];
    
    [[SEGAnalytics sharedAnalytics] identify:@"SEGAurycSDK Integration Identify Test"];
}

@end
