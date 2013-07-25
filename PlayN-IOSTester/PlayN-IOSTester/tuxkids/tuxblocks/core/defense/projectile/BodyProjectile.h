//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/projectile/BodyProjectile.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseProjectileBodyProjectile_H_
#define _TuxkidsTuxblocksCoreDefenseProjectileBodyProjectile_H_

@class PythagorasFVector;
@class TuxkidsTuxblocksCoreDefenseGrid;
@class TuxkidsTuxblocksCoreDefenseTowerTower;
@class TuxkidsTuxblocksCoreDefenseWalkerWalker;
@protocol PlaynCoreUtilClock;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/defense/projectile/Projectile.h"

@interface TuxkidsTuxblocksCoreDefenseProjectileBodyProjectile : TuxkidsTuxblocksCoreDefenseProjectileProjectile {
 @public
  PythagorasFVector *position_;
  PythagorasFVector *velocity_;
  PythagorasFVector *temp_;
}

@property (nonatomic, strong) PythagorasFVector *position;
@property (nonatomic, strong) PythagorasFVector *velocity;
@property (nonatomic, strong) PythagorasFVector *temp;

- (float)maxSpeed;
- (float)acceleration;
- (void)placeWithTuxkidsTuxblocksCoreDefenseGrid:(TuxkidsTuxblocksCoreDefenseGrid *)grid
     withTuxkidsTuxblocksCoreDefenseWalkerWalker:(TuxkidsTuxblocksCoreDefenseWalkerWalker *)target
       withTuxkidsTuxblocksCoreDefenseTowerTower:(TuxkidsTuxblocksCoreDefenseTowerTower *)source;
- (BOOL)doUpdateWithInt:(int)delta;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (PythagorasFVector *)getHitPosition;
- (id)init;
@end

#endif // _TuxkidsTuxblocksCoreDefenseProjectileBodyProjectile_H_
