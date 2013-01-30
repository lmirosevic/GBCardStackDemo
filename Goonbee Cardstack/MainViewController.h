//
//  MainViewController.h
//  Goonbee Cardstack
//
//  Created by Luka Mirošević on 15/01/2012.
//  Copyright (c) 2012 Goonbee. All rights reserved.
//

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;

- (IBAction)showLeft:(id)sender;
- (IBAction)showRight:(id)sender;
- (IBAction)showTop:(id)sender;

@end
