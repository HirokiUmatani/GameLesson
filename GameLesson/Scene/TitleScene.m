//
//  TitleScene.m
//  GameLesson
//
//  Created by hirokiumatani on 2015/10/30.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//

#import "TitleScene.h"
#import "Const.h"

#define TITLE_FONT_SIZE 50
#define START_FONT_SIZE 25
#define START_LABEL_NAME @"START_LABEL"

@implementation TitleScene
- (id)initWithSize:(CGSize)size
{
    self = [super initWithSize:size];
    if (self)
    {
        [self setTitleLabel:@"Game Title"];
        [self setStartLabel:@"Start"];
    }
    return self;
}

- (void)setTitleLabel:(NSString *)title
{
    SKLabelNode *titleLabel = [SKLabelNode new];
    
    titleLabel.fontName  = BASE_FONT_TYPE;
    titleLabel.fontSize  = TITLE_FONT_SIZE;
    titleLabel.fontColor = [SKColor whiteColor];
    titleLabel.text      = title;
    titleLabel.position  = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
    
    [self addChild:titleLabel];
}

- (void)setStartLabel:(NSString *)title
{
    SKLabelNode *startLabel = [SKLabelNode new];

    startLabel.fontName  = BASE_FONT_TYPE;
    startLabel.fontSize  = START_FONT_SIZE;
    startLabel.fontColor = [SKColor yellowColor];
    startLabel.name      = START_LABEL_NAME;
    startLabel.text      = title;
    startLabel.position  = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame) - 150);
    
    [self addChild:startLabel];
}

- (void)touchesBegan:(NSSet *)touches
           withEvent:(UIEvent *)event
{
    UITouch *touch    = [touches anyObject];
    
    CGPoint  location = [touch locationInNode:self];
    
    SKNode  *node     = [self nodeAtPoint:location];
    
    if( node &&
       [node.name isEqualToString:START_LABEL_NAME])
    {
        [_titleSceneDelegate touchStart];
    }
}
@end
