//
//  ArticleListResponseModel.m
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/31/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import "ArticleListResponseModel.h"

@class ArticleModel;

@implementation ArticleListResponseModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
			 @"articles" : @"response.docs",
			 @"status" : @"status"
			 };
}

#pragma mark - JSON Transformer

+ (NSValueTransformer *)articlesJSONTrasnformer {
	return [MTLJSONAdapter arrayTransformerWithModelClass:ArticleModel.class];
}

@end
