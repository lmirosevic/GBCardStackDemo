//
//  TopViewController.m
//  Goonbee Cardstack
//
//  Created by Luka Mirošević on 16/01/2012.
//  Copyright (c) 2012 Goonbee. All rights reserved.
//

#import "TopViewController.h"

#import "GBCardStackController.h"

@implementation TopViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showMain:(id)sender {
    [self.cardStackController restoreMainCardAnimated:YES];
}

@end
