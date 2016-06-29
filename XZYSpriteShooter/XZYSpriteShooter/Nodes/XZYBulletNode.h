//
//  XZYBulletNode.h
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/6.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "XZYPhysicsCategories.h"
#import "Header.h"

@interface XZYBulletNode : SKNode


@property (assign,nonatomic)CGVector thrust;

+ (instancetype)bulletFrom:(CGPoint)start toward:(CGPoint)destination;

- (void)applyRecurringForce;

@end
