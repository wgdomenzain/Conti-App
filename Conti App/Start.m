//
//  ViewController.m
//  Conti App
//
//  Created by Walter Gonzalez Domenzain on 14/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//  Hello world

#import "Start.h"

int     iState = 0;
NSMutableArray  *aPhotos;
NSArray         *aArraExample;

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];

    aPhotos          =  [NSMutableArray arrayWithObjects: @"chavo.png", @"chilindrina.png", @"jaimito.png", @"nono.png", @"clotilde.png", @"nono.png", @"clotilde.png", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnChangeTitlePressed:(id)sender
{

    switch (iState) {
        case 0:
            self.lblTitle.text = @"Ruben Ramos";
            break;
        case 1:
            self.lblTitle.text = @"Diego Mendoza";
            break;
        case 2:
            self.lblTitle.text = @"Luis De Alba";
            break;
        case 3:
            self.lblTitle.text = @"Agustín Castañeda";
            break;
        case 4:
            self.lblTitle.text = @"Oscar Camacho";
            break;
        case 5:
            self.lblTitle.text = @"Ramón García";
            break;
        case 6:
            self.lblTitle.text = @"Daniela Mota";
            iState = 0;
            break;
        default:
            break;
    }
    self.imgUser.image                      = [UIImage imageNamed:aPhotos[iState]];
    self.lblTitle.adjustsFontSizeToFitWidth = YES;
    iState++;
    
    NSLog(@"Text = %@", self.lblTitle.text);
    NSLog(@"iState = %d", iState);
}

- (IBAction)btnChangeColorPressed:(id)sender {
}

- (IBAction)btnChangeSize:(id)sender {
}
@end
