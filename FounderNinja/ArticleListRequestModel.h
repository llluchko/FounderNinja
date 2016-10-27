//
//  ArticleListRequestModel.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/27/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "MTLModel.h"


@interface ArticleListRequestModel : MTLModel

@property(nonatomic,copy) NSString* query;
@property(nonatomic,copy) NSDate* articlesFromDate;
@property(nonatomic,copy) NSDate* articlesToDate;

@end
