//
//  PLLViewController.m
//  DemoForLayerMask
//
//  Created by liu poolo on 14-8-2.
//  Copyright (c) 2014年 liu poolo. All rights reserved.
//

#import "PLLViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface PLLViewController ()

@end

@implementation PLLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
    UIImageView* bImageView=[[UIImageView alloc]initWithFrame:self.view.frame];
    [bImageView setImage:[UIImage imageNamed:@"2B.jpg"]];
    [self.view addSubview:bImageView];

    UIImageView* fImageView=[[UIImageView alloc]initWithFrame:self.view.frame];
    [fImageView setImage:[UIImage imageNamed:@"2A.jpg"]];
    [self.view addSubview:fImageView];
    
    CALayer *layer=[CALayer layer];
    layer.frame=self.view.frame;
    layer.contents=(id)[[UIImage imageNamed:@"16.png"] CGImage];
    fImageView.layer.mask=layer;
    fImageView.layer.masksToBounds=YES;

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
