//
//  ArticleListResponseModel.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/31/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "MTLModel.h"
#import "ArticleModel.h"

@interface ArticleListResponseModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSArray *articles;
@property (nonatomic, copy) NSString *status;

@end
