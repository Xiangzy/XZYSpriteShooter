//
//  XZYStartScene.m
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/6.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import "XZYStartScene.h"
#import "GameScene.h"

@implementation XZYStartScene

- (instancetype)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor greenColor];
        SKLabelNode *topLabel = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        topLabel.text = @"Sprite Shooter";
        topLabel.fontColor = [SKColor blackColor];
        topLabel.fontSize = 48;
        topLabel.position = CGPointMake(self.frame.size.width/2, self.frame.size.height*0.7);
        [self addChild:topLabel];
        SKLabelNode *bottomLabel = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        bottomLabel.text = @"Touch anywhere to start";
        bottomLabel.fontColor = [SKColor blackColor];
        bottomLabel.fontSize = 20;
        bottomLabel.position = CGPointMake(self.frame.size.width/2, self.frame.size.height*0.3);
        [self addChild:bottomLabel];
        
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SKTransition *transition = [SKTransition doorwayWithDuration:1];
    SKScene *game = [[GameScene alloc] initWithSize:self.frame.size];
    [self.view presentScene:game transition:transition];
}

@end
