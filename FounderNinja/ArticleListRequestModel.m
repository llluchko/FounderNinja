
//
//  ArticleListRequestModel.m
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/27/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import "ArticleListRequestModel.h"

@implementation ArticleListRequestModel

+ (NSDateFormatter *)dateFormatter {
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	dateFormatter.dateFormat = @"yyyyMMdd";
	return dateFormatter;
}

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
			 @"query" : @"q",
			 @"articlesFromDate" : @"begin_date",
			 @"articlesToDate" : @"end_date"
			 };
}

#pragma mark - JSON Transformers

+ (NSValueTransformer *)articlesToDateJSONTransformer {
	return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
		return [self.dateFormatter dateFromString:dateString];
	} reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
		return [self.dateFormatter stringFromDate:date];
	}];

}

+ (NSValueTransformer *)articlesFromDateJSONTransformer {
	return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success,
																 NSError *__autoreleasing *error) {
		return [self.dateFormatter dateFromString:dateString];
	} reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
		return [self.dateFormatter stringFromDate:date];
	}];
}

@end
