//
//  ArticleRealm.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 11/4/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import <Realm/Realm.h>
#import "ArticleModel.h"

@interface ArticleRealm : RLMObject

@property NSString *leadParagraph;
@property NSString *url;

- (id)initWithMantleModel:(ArticleModel *)articleModel;

@end
