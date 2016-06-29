//
//  XZYBulletNode.m
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/6.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import "XZYBulletNode.h"

@implementation XZYBulletNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        SKLabelNode *dot = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        dot.fontColor = [SKColor blackColor];
        dot.fontSize = 40;
        dot.text = @".";
        [self addChild:dot];
        SKPhysicsBody *body = [SKPhysicsBody bodyWithCircleOfRadius:1];
        body.dynamic = YES;
        body.categoryBitMask = PlayerMissileCategory;
        body.contactTestBitMask = EnemyCategory;
        body.collisionBitMask = EnemyCategory;
        body.mass = 0.01;
        self.physicsBody = body;
        self.name = [NSString stringWithFormat:@"Bullet %p",self];
    }
    return self;
}

+ (instancetype)bulletFrom:(CGPoint)start toward:(CGPoint)destination
{
    XZYBulletNode *bullet = [[self alloc] init];
    bullet.position = start;
    CGVector movement = XZYVectorBetweenPoints(start, destination);
    CGFloat magnitude = XZYVectorLength(movement);
    if (magnitude == 0.0f) {
        return nil;
    }
    CGVector scaledMovement = XZYVectorMultiply(movement, 1/magnitude);
    CGFloat thrustMagnitude = 100;
    bullet.thrust = XZYVectorMultiply(scaledMovement, thrustMagnitude);
    return bullet;
}

- (void)applyRecurringForce
{
    [self.physicsBody applyForce:self.thrust];
}

@end
