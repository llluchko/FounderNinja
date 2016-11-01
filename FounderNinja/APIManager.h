//
//  APIManager.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 11/1/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import "SessionManager.h"
#import "ArticleListRequestModel.h"
#import "ArticleListResponseModel.h"

@interface APIManager : SessionManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel success:(void (^)(ArticleListResponseModel *responseModel))success failure:(void (^)(NSError * error))failure;

@end
