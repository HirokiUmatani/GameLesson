//
//  MainViewController.m
//  GameLesson
//
//  Created by hirokiumatani on 2015/10/30.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet SKView *skView;


@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self debugMode:YES];
    [self setTitleScene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)setTitleScene
{
    TitleScene *titleScene = [TitleScene sceneWithSize:_skView.bounds.size];
    titleScene.titleSceneDelegate = self;
    [_skView presentScene:titleScene];
}

- (void)debugMode:(BOOL)flag
{
    #ifdef DEBUG
    _skView.showsDrawCount = flag;
    _skView.showsNodeCount = flag;
    _skView.showsFPS       = flag;
    #endif
}

#pragma mark - TitleSceneDelegate
- (void)touchStart
{
    
}
@end
