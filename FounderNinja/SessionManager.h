//
//  SessionManager.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/26/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface SessionManager : AFHTTPSessionManager

+ (id)sharedManager;

@end
