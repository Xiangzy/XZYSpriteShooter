//
//  XZYGameOver-Scene.m
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/6.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import "XZYGameOver-Scene.h"
#import "XZYStartScene.h"

@implementation XZYGameOver_Scene

- (instancetype)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor purpleColor];
        SKLabelNode *text = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        text.text = @"Game Over";
        text.fontColor = [SKColor whiteColor];
        text.fontSize = 50;
        text.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        [self addChild:text];
    }
    return self;
}

- (void)didMoveToView:(SKView *)view
{
    [self performSelector:@selector(goToStart) withObject:nil afterDelay:2];
}

- (void)goToStart
{
    SKTransition *transition = [SKTransition flipVerticalWithDuration:1];
    SKScene *start = [[XZYStartScene alloc] initWithSize:self.frame.size];
    [self.view presentScene:start transition:transition];
}

@end
