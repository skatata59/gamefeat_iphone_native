//
//  AppDelegate.h
//  GameFeatSample
//
//  Created by Basic on 13/04/05.
//  Copyright (c) 2013年 Basic. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <GameFeatKit/GFView.h>
#import <GameFeatKit/GFController.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, GFViewDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
