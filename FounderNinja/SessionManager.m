//
//  SessionManager.m
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/26/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import "SessionManager.h"

static NSString *const BaseURL = @"https://api.nytimes.com";

//MARK: - SessionManager class - a singleton object that we use to perform get requests to the API.
@implementation SessionManager

- (id)init {
	self = [super initWithBaseURL:[NSURL URLWithString:BaseURL]];
	if(!self) return nil;
	
	self.responseSerializer = [AFJSONResponseSerializer serializer];
	self.requestSerializer = [AFJSONRequestSerializer serializer];
	
	return self;
}

+ (id)sharedManager {
	static SessionManager *_sessioManager = nil;
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sessioManager = [[self alloc] init];
	});
	
	return _sessioManager;
}

@end
