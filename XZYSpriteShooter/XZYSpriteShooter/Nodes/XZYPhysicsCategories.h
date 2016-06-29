//
//  XZYPhysicsCategories.h
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/6.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#ifndef XZYPhysicsCategories_h
#define XZYPhysicsCategories_h


typedef NS_OPTIONS(uint32_t,XZYPhysicsCategory) {
    PlayerCategory = 1<<1,
    EnemyCategory = 1<<2,
    PlayerMissileCategory = 1<<3
};

#endif /* XZYPhysicsCategories_h */
