//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/GameState.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSIntArray.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "tuxkids/tuxblocks/core/GameBackgroundSprite.h"
#include "tuxkids/tuxblocks/core/GameState.h"
#include "tuxkids/tuxblocks/core/defense/round/Reward.h"
#include "tuxkids/tuxblocks/core/defense/select/Problem.h"
#include "tuxkids/tuxblocks/core/defense/tower/Tower.h"
#include "tuxkids/tuxblocks/core/defense/tower/TowerType.h"
#include "tuxkids/tuxblocks/core/solve/expression/Equation.h"
#include "tuxkids/tuxblocks/core/solve/expression/EquationGenerator.h"

@implementation TuxkidsTuxblocksCoreGameState

@synthesize towerCounts_ = towerCounts__;
@synthesize problems_ = problems__;
@synthesize background_ = background__;
@synthesize inventoryChangedListener = inventoryChangedListener_;
@synthesize problemAddedListener = problemAddedListener_;
@synthesize maxSteps = maxSteps_;
@synthesize minSteps = minSteps_;

- (IOSIntArray *)towerCounts {
  return towerCounts__;
}

- (id<JavaUtilList>)problems {
  return problems__;
}

- (TuxkidsTuxblocksCoreGameBackgroundSprite *)background {
  return background__;
}

- (int)themeColor {
  return [((TuxkidsTuxblocksCoreGameBackgroundSprite *) nil_chk([self background])) primaryColor];
}

- (void)newThemeColor OBJC_METHOD_FAMILY_NONE {
  [((TuxkidsTuxblocksCoreGameBackgroundSprite *) nil_chk(background__)) newThemeColor];
}

- (void)setInventoryChangedListenerWithTuxkidsTuxblocksCoreGameState_InventoryChangedListener:(id<TuxkidsTuxblocksCoreGameState_InventoryChangedListener>)inventoryChangedListener {
  self.inventoryChangedListener = inventoryChangedListener;
}

- (void)setProblemAddedListenerWithTuxkidsTuxblocksCoreGameState_ProblemAddedListener:(id<TuxkidsTuxblocksCoreGameState_ProblemAddedListener>)problemAddedListener {
  self.problemAddedListener = problemAddedListener;
}

- (id)init {
  if ((self = [super init])) {
    maxSteps_ = 1;
    minSteps_ = 2;
    background__ = [[TuxkidsTuxblocksCoreGameBackgroundSprite alloc] init];
    towerCounts__ = [IOSIntArray arrayWithLength:[TuxkidsTuxblocksCoreDefenseTowerTower towerCount]];
    problems__ = [[JavaUtilArrayList alloc] init];
    [self addItemWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2];
    [self addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[[TuxkidsTuxblocksCoreDefenseRoundReward alloc] initWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2]];
    [self addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[[TuxkidsTuxblocksCoreDefenseRoundReward alloc] initWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2]];
  }
  return self;
}

- (void)solveProblemWithTuxkidsTuxblocksCoreDefenseSelectProblem:(TuxkidsTuxblocksCoreDefenseSelectProblem *)problem {
  [((id<JavaUtilList>) nil_chk(problems__)) removeWithId:problem];
  [self addRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[((TuxkidsTuxblocksCoreDefenseSelectProblem *) nil_chk(problem)) reward]];
}

- (void)addRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:(TuxkidsTuxblocksCoreDefenseRoundReward *)reward {
  if (((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).tower != nil) {
    (*[((IOSIntArray *) nil_chk([self towerCounts])) intRefAtIndex:[((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).tower index]]) += ((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).count;
    [self onInventoryChangedWithInt:[((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).tower index]];
  }
}

- (void)addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:(TuxkidsTuxblocksCoreDefenseRoundReward *)reward {
  TuxkidsTuxblocksCoreSolveExpressionEquation *eq = [TuxkidsTuxblocksCoreSolveExpressionEquationGenerator generateWithInt:(int) ([JavaLangMath random] * (maxSteps_ - minSteps_)) + minSteps_];
  TuxkidsTuxblocksCoreDefenseSelectProblem *problem = [[TuxkidsTuxblocksCoreDefenseSelectProblem alloc] initWithTuxkidsTuxblocksCoreSolveExpressionEquation:eq withTuxkidsTuxblocksCoreDefenseRoundReward:reward];
  [((id<JavaUtilList>) nil_chk(problems__)) addWithId:problem];
  if (problemAddedListener_ != nil) [problemAddedListener_ onProblemAddedWithTuxkidsTuxblocksCoreDefenseSelectProblem:problem];
}

- (void)addItemWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:(TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)type
                                                         withInt:(int)count {
  int index = [((TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *) nil_chk(type)) index];
  (*[((IOSIntArray *) nil_chk(towerCounts__)) intRefAtIndex:index]) += count;
  [self onInventoryChangedWithInt:index];
}

- (void)onInventoryChangedWithInt:(int)index {
  if (inventoryChangedListener_ != nil) {
    [inventoryChangedListener_ onInventoryChangedWithInt:index withInt:[((IOSIntArray *) nil_chk(towerCounts__)) intAtIndex:index]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreGameState *typedCopy = (TuxkidsTuxblocksCoreGameState *) copy;
  typedCopy.towerCounts_ = towerCounts__;
  typedCopy.problems_ = problems__;
  typedCopy.background_ = background__;
  typedCopy.inventoryChangedListener = inventoryChangedListener_;
  typedCopy.problemAddedListener = problemAddedListener_;
  typedCopy.maxSteps = maxSteps_;
  typedCopy.minSteps = minSteps_;
}

@end
