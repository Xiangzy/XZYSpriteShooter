//
//  XZYPlayerNode.m
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/5.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import "XZYPlayerNode.h"
#import "Header.h"

@implementation XZYPlayerNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = [NSString stringWithFormat:@"Player %p",self];
        [self initNodeGraph];
        [self initPhysicsBody];
    }
    return self;
}

- (void)initNodeGraph
{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
    label.fontColor = [SKColor darkGrayColor];
    label.fontSize = 40;
    label.text = @"v";
    label.zRotation = M_PI;
    label.name = @"label";
    [self addChild:label];
}

- (CGFloat)moveToward:(CGPoint)location
{
    [self removeActionForKey:@"movement"];
    [self removeActionForKey:@"wobbling"];
    CGFloat distance = XZYPointDistance(self.position, location);
    CGFloat pixels = [UIScreen mainScreen].bounds.size.width;
    CGFloat duration = 2*distance/pixels;
    [self runAction:[SKAction moveTo:location duration:duration] withKey:@"movement"];
    CGFloat wobbleTime = 0.3;
    CGFloat halfWobbleTime = wobbleTime*0.5;
    SKAction *wobbling = [SKAction sequence:@[[SKAction scaleXTo:0.2 duration:halfWobbleTime],[SKAction scaleXTo:1 duration:halfWobbleTime]]];
    NSUInteger wobbleCount = duration/wobbleTime;
    [self runAction:[SKAction repeatAction:wobbling count:wobbleCount] withKey:@"wobbling"];
    return duration;
}

- (void)initPhysicsBody {
    SKPhysicsBody *body = [SKPhysicsBody bodyWithRectangleOfSize:CGSizeMake(20, 20)];
    body.affectedByGravity = NO;
    body.categoryBitMask = PlayerCategory;
    body.contactTestBitMask = EnemyCategory;
    body.collisionBitMask = 0;
    self.physicsBody = body;
}

- (void)receiveAttacker:(SKNode *)attacker contact:(SKPhysicsContact *)contact
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"MissileExplosion" ofType:@"sks"];
    SKEmitterNode *explosion = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    explosion.numParticlesToEmit = 50;
    explosion.position = contact.contactPoint;
    [self.scene addChild:explosion];
}

@end
