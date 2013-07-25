//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/tower/TowerType.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseTowerTowerType_H_
#define _TuxkidsTuxblocksCoreDefenseTowerTowerType_H_

@class TuxkidsTuxblocksCoreDefenseTowerTower;

#import "JreEmulation.h"
#include "java/lang/Enum.h"

typedef enum {
  TuxkidsTuxblocksCoreDefenseTowerTowerType_PeaShooter = 0,
  TuxkidsTuxblocksCoreDefenseTowerTowerType_Freezer = 1,
  TuxkidsTuxblocksCoreDefenseTowerTowerType_BigShooter = 2,
  TuxkidsTuxblocksCoreDefenseTowerTowerType_Zapper = 3,
  TuxkidsTuxblocksCoreDefenseTowerTowerType_VerticalWall = 4,
  TuxkidsTuxblocksCoreDefenseTowerTowerType_HorizontalWall = 5,
} TuxkidsTuxblocksCoreDefenseTowerTowerType;

@interface TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum : JavaLangEnum < NSCopying > {
 @public
  TuxkidsTuxblocksCoreDefenseTowerTower *instance__;
}
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseTowerTower *instance_;

+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)PeaShooter;
+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)Freezer;
+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)BigShooter;
+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)Zapper;
+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)VerticalWall;
+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)HorizontalWall;
+ (IOSObjectArray *)values;
+ (TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (TuxkidsTuxblocksCoreDefenseTowerTower *)instance;
- (TuxkidsTuxblocksCoreDefenseTowerTower *)newInstance OBJC_METHOD_FAMILY_NONE;
- (int)index;
- (id)initWithTuxkidsTuxblocksCoreDefenseTowerTower:(TuxkidsTuxblocksCoreDefenseTowerTower *)instance
                                       withNSString:(NSString *)name
                                            withInt:(int)ordinal;
@end

#endif // _TuxkidsTuxblocksCoreDefenseTowerTowerType_H_
