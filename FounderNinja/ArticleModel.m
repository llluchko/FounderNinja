//
//  ArticleModel.m
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/29/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//


#import "ArticleModel.h"

@implementation ArticleModel

# pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
			 @"leadParagraph" : @"lead_paragraph",
			 @"url" : @"web_url"
			 };
}

@end
