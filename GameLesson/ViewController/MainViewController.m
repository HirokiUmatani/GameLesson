//
//  MainViewController.m
//  GameLesson
//
//  Created by hirokiumatani on 2015/10/30.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//

#import "MainViewController.h"
#import "CommonUtility.h"
@interface MainViewController ()
@property (weak, nonatomic) IBOutlet SKView *skView;


@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self debugMode:YES];
    SKScene *scene = [SKScene sceneWithSize:_skView.bounds.size];
    [_skView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)debugMode:(BOOL)flag
{
    _skView.showsDrawCount = flag;
    _skView.showsNodeCount = flag;
    _skView.showsFPS       = flag;
}

@end
