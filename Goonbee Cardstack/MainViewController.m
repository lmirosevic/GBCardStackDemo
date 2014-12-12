//
//  MainViewController.m
//  Goonbee Cardstack
//
//  Created by Luka Mirošević on 15/01/2012.
//  Copyright (c) 2012 Goonbee. All rights reserved.
//

#import "MainViewController.h"

#import "GBCardStackController.h"

@interface MainViewController () <UINavigationBarDelegate>

@end

@implementation MainViewController

#pragma mark - Life

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.slideableViews addObject:self.leftButton];
    [self.slideableViews addObject:self.topButton];
    [self.slideableViews addObject:self.rightButton];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Actions

- (IBAction)showLeft:(id)sender {
    [self.cardStackController showCard:GBCardStackCardTypeLeft animated:YES];
}

- (IBAction)showRight:(id)sender {
    [self.cardStackController showCard:GBCardStackCardTypeRight animated:YES];
}

- (IBAction)showTop:(id)sender {
    [self.cardStackController showCard:GBCardStackCardTypeTop animated:YES];
}

#pragma mark - UINavigationBarDelegate

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar {
    return UIBarPositionTopAttached;
}

@end
