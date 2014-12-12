//
//  LeftViewController.m
//  Goonbee Cardstack
//
//  Created by Luka Mirošević on 15/01/2012.
//  Copyright (c) 2012 Goonbee. All rights reserved.
//

#import "LeftViewController.h"

#import "GBCardStackController.h"

@implementation LeftViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showMain:(id)sender {
    [self.cardStackController restoreMainCardAnimated:YES];
}

@end
