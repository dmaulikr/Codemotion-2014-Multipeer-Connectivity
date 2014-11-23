//
//  AppDelegate.m
//  Chat
//
//  Created by Jorge Maroto García on 20/11/14.
//  Copyright (c) 2014 http://maroto.me. All rights reserved.
//

#import "AppDelegate.h"

NSString * const chatService = @"chatService";

@interface AppDelegate ()
@property (nonatomic, strong) MCAdvertiserAssistant *advertiser;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSString *deviceName = [[UIDevice currentDevice] name];
    self.peerId = [[MCPeerID alloc] initWithDisplayName:deviceName];
    self.session = [[MCSession alloc] initWithPeer:self.peerId];
    
    self.advertiser = [[MCAdvertiserAssistant alloc] initWithServiceType:chatService discoveryInfo:nil session:self.session];
    [self.advertiser start];

    return YES;
}

@end
