//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/tower/PeaShooter.java
//
//  Created by Thomas on 7/10/13.
//

@class TuxkidsTuxblocksCoreDefenseProjectileProjectile;

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/defense/tower/Tower.h"

@interface TuxkidsTuxblocksCoreDefenseTowerPeaShooter : TuxkidsTuxblocksCoreDefenseTowerTower {
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
