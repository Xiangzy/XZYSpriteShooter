//
//  SKNode+XZYExtra.h
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/6.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKNode (XZYExtra)


- (void)receiveAttacker:(SKNode *)attacker contact:(SKPhysicsContact *)contact;
- (void)friendlyBumpFrom:(SKNode *)node;


@end
