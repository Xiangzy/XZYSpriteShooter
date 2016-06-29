//
//  Header.h
//  XZYSpriteShooter
//
//  Created by Senbakeji on 15/11/5.
//  Copyright © 2015年 Senbakeji. All rights reserved.
//

#ifndef Header_h
#define Header_h

static inline CGVector XZYVectorMultiply(CGVector v,CGFloat m)
{
    return CGVectorMake(v.dx*m,v.dy*m);
}

static inline CGVector XZYVectorBetweenPoints(CGPoint p1,CGPoint p2)
{
    return CGVectorMake(p2.x - p1.x,p2.y - p1.y);
}

static inline CGFloat XZYVectorLength(CGVector v)
{
    return sqrtf(powf(v.dx,2)+powf(v.dy,2));
}

static inline CGFloat XZYPointDistance(CGPoint p1,CGPoint p2)
{
    return sqrtf(powf(p2.x - p1.x,2)+powf(p2.y - p1.y,2));
}


#endif /* Header_h */
