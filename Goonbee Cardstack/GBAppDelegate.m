//
//  GBAppDelegate.m
//  Goonbee Cardstack
//
//  Created by Luka Mirošević on 15/01/2012.
//  Copyright (c) 2012 Goonbee. All rights reserved.
//

#import "GBAppDelegate.h"

#import <GBCardStack/GBCardStack.h>
#import <GBToolbox/GBToolbox.h>

#import "LeftViewController.h"
#import "MainViewController.h"
#import "TopViewController.h"
#import "RightViewController.h"

#import "PlainViewController.h"

@interface GBAppDelegate ()

@property (strong, nonatomic) GBCardStackController *cardStackController;

@end

@implementation GBAppDelegate

EnableAutolayoutDebugHotkeyWithCrash(YES)

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Create GBCardStack instance
    self.cardStackController = [GBCardStackController new];
    
    // Add some view controllers to the card stack
    self.cardStackController.leftCard = [LeftViewController new];
    self.cardStackController.mainCard = [MainViewController new];
    self.cardStackController.topCard = [TopViewController new];
    self.cardStackController.rightCard = [RightViewController new];
    self.cardStackController.bottomCard = [PlainViewController new];

    // Create our window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.cardStackController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
