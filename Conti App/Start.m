//
//  ViewController.m
//  Conti App
//
//  Created by Walter Gonzalez Domenzain on 14/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//  Hello world

#import "Start.h"
#import <math.h>

#define RED     0
#define GREEN   1
#define BLUE    2

int     iState = 0;
NSMutableArray  *aPhotos;
NSArray         *aArraExample;
NSMutableArray *aNames;
int     iColorState = 0;
int     sizeState = 0;


float width;
float height;




@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    
    width = self.imgUser.frame.size.width;
    height = self.imgUser.frame.size.height;
    aPhotos          =  [NSMutableArray arrayWithObjects: @"chavo.png", @"chilindrina.png", @"jaimito.png", @"nono.png", @"clotilde.png", @"nono.png", @"clotilde.png", nil];
    aNames = [NSMutableArray arrayWithObjects: @"Ruben Ramos", @"Diego Mendoza",@"Luis De Alba",@"Agustín Castañeda",@"Oscar Camacho",@"Ramón García",@"Daniela Mota",nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnChangeTitlePressed:(id)sender
{
    self.lblTitle.text                      = aNames[iState];
    self.imgUser.image                      = [UIImage imageNamed:aPhotos[iState]];
    
    self.lblTitle.adjustsFontSizeToFitWidth = YES;
    iState++;
    
    if (iState==7){
        iState=0;
    }
    
    NSLog(@"Text = %@", self.lblTitle.text);
    NSLog(@"iState = %d", iState);
}

- (IBAction)btnChangeColorPressed:(id)sender {
    UIColor *color;
    switch (iColorState) {
        case RED:
            color = [UIColor redColor];
            break;
        case GREEN:
            color = [UIColor greenColor];
            break;
        case BLUE:
            color = [UIColor blueColor];
            break;
            
        default:
            iColorState = 0;
            color = [UIColor redColor];
            break;
    }
    self.lblTitle.textColor = color;
    iColorState++;

}

- (IBAction)btnChangeSize:(id)sender {
    float size = 1.0f;
    switch (sizeState) {
        case 0:
            size = 0.5f;
            break;
        case 1:
            size = 1.0f;
            break;
        case 2:
            size = 2.0f;
            break;
            
        default:
            break;
    }
    self.imgUser.frame = CGRectMake(self.imgUser.frame.origin.x, self.imgUser.frame.origin.y, width*size, height*size);
    sizeState++;
    if (sizeState == 3) {
        sizeState =0;
    }
}
@end
