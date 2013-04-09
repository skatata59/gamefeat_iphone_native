//
//  ViewController.m
//  GameFeatSample
//
//  Created by Basic on 13/04/05.
//  Copyright (c) 2013年 Basic. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

#define GAMEFEAT_MEDIA_ID @"メディアID" //※メディアIDは管理画面よりご確認いただけます。

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"GameFeat起動" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(60, (frame.size.height - 31) / 2, 200, 31)];
    [btn addTarget:self action:@selector(onClickGameFeat:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onClickGameFeat:(id)sender{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [GFController showGF:self site_id:GAMEFEAT_MEDIA_ID delegate:appDelegate];
}

@end
