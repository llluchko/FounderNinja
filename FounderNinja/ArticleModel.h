//
//  ArticleModel.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/29/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ArticleModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *leadParagraph;
@property (nonatomic, copy) NSString *url;

@end
