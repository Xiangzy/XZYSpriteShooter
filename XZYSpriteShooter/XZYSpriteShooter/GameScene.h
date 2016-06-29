//
//  GameScene.h
//  XZYSpriteShooter
//

//  Copyright (c) 2015年 Senbakeji. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "XZYPlayerNode.h"
#import "XZYEnemyNode.h"
#import "XZYBulletNode.h"
#import "SKNode+XZYExtra.h"
#import "XZYGameOver-Scene.h"

@interface GameScene : SKScene <SKPhysicsContactDelegate>

@property (assign,nonatomic)NSUInteger levelNumber;
@property (assign,nonatomic)NSUInteger playerLives;
@property (assign,nonatomic)BOOL finished;


@property (strong,nonatomic)XZYPlayerNode *playerNode;
@property (strong,nonatomic)SKNode *enemies;
@property (strong,nonatomic)SKNode *playerBullets;


+ (instancetype)sceneWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber;
- (instancetype)initWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber;

@end
