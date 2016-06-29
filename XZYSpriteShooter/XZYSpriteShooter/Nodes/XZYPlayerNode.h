//
//  XZYPlayerNode.h
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/5.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "XZYPhysicsCategories.h"
#import "Header.h"

@interface XZYPlayerNode : SKNode

- (CGFloat)moveToward:(CGPoint)location;

@end
