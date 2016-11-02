
//
//  APIManager.m
//  FounderNinja
//
//  Created by Latchezar Mladenov on 11/1/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import "APIManager.h"
#import "Mantle.h"

static NSString *const kArticlesListPath = @"/svc/search/v2/articlesearch.json";
static NSString *const kApiKey = @"efa48cdfbd124ac8a934619d1814ac2a";

@implementation APIManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel success:(void (^)(ArticleListResponseModel *responseModel))success failure:(void (^)(NSError *error))failure{
	
	NSDictionary *parameters = [MTLJSONAdapter JSONDictionaryFromModel:requestModel error:nil];

}

@end
