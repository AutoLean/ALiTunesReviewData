//
//  ALiTunesReviewDataManager.h
//  ALiTunesReviewData
//
//  Created by Jeffrey Jackson on 12/19/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface ALiTunesReviewDataManager : AFHTTPRequestOperationManager

- (void)searchReviewsWithCountryCode:(NSString *)countryCode
                       applicationID:(NSString *)applicationID
                          parameters:(NSDictionary *)parameters
                            complete:(void (^)(id, NSError *))block;

@end
