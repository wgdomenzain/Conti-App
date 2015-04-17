//
//  ViewController.h
//  Conti App
//
//  Created by Walter Gonzalez Domenzain on 14/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController
//segmented Control
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;


//switch value
@property (strong, nonatomic) IBOutlet UISwitch *switchImage;

//Images
@property (strong, nonatomic) IBOutlet UIImageView *imgUser;


//Labels

@property (strong, nonatomic) IBOutlet UILabel *lblTitle;

//Actions
- (IBAction)btnChangeTitlePressed:(id)sender;
- (IBAction)btnChangeColorPressed:(id)sender;
- (IBAction)btnChangeSize:(id)sender;
- (IBAction)switchPressed:(id)sender;
- (IBAction)segmentedPress:(id)sender;
@end

