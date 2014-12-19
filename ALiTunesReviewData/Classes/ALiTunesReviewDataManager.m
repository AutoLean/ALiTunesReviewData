//
//  ALiTunesReviewDataManager.m
//  ALiTunesReviewData
//
//  Created by Jeffrey Jackson on 12/19/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import "ALiTunesReviewDataManager.h"

@implementation ALiTunesReviewDataManager

#define SearchAPIURL @"https://itunes.apple.com"

- (void)searchReviewsWithCountryCode:(NSString *)countryCode
                       applicationID:(NSString *)applicationID
                          parameters:(NSDictionary *)parameters
                            complete:(void (^)(id, NSError *))block {
    [self GET:[NSString stringWithFormat:@"%@/%@/rss/customerreviews/id=%@/sortBy=mostRecent/json", SearchAPIURL, countryCode, applicationID]
   parameters:parameters
      success:^(AFHTTPRequestOperation *operation, id responseObject) {
          NSDictionary *result = responseObject;
          if (block) block(result, nil);
      }
      failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          if (block) block(nil, error);
      }];
}

@end
