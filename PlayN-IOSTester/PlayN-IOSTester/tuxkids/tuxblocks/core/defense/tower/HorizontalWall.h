//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/tower/HorizontalWall.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseTowerHorizontalWall_H_
#define _TuxkidsTuxblocksCoreDefenseTowerHorizontalWall_H_

@class TuxkidsTuxblocksCoreDefenseProjectileProjectile;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/defense/tower/Tower.h"

@interface TuxkidsTuxblocksCoreDefenseTowerHorizontalWall : TuxkidsTuxblocksCoreDefenseTowerTower {
}

- (int)rows;
- (int)cols;
- (float)damage;
- (int)fireRate;
- (float)range;
- (TuxkidsTuxblocksCoreDefenseProjectileProjectile *)createProjectile;
- (TuxkidsTuxblocksCoreDefenseTowerTower *)copy__ OBJC_METHOD_FAMILY_NONE;
- (NSString *)name;
- (int)cost;
- (int)commonness;
- (id)init;
@end

#endif // _TuxkidsTuxblocksCoreDefenseTowerHorizontalWall_H_
