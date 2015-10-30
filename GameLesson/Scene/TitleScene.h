//
//  TitleScene.h
//  GameLesson
//
//  Created by hirokiumatani on 2015/10/30.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
@protocol TitleSceneDelegate <NSObject>
- (void)touchStart;
@end
@interface TitleScene : SKScene
@property (nonatomic,assign) id <TitleSceneDelegate> titleSceneDelegate;
@end
