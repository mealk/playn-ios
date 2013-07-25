//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/select/ProblemButton.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseSelectProblemButton_H_
#define _TuxkidsTuxblocksCoreDefenseSelectProblemButton_H_

@class TuxkidsTuxblocksCoreDefenseSelectProblem;
@class TuxkidsTuxblocksCoreSolveExpressionEquation;
@protocol PlaynCoreImage;
@protocol PlaynCoreUtilClock;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/Button.h"

#define TuxkidsTuxblocksCoreDefenseSelectProblemButton_MARGIN 10

@interface TuxkidsTuxblocksCoreDefenseSelectProblemButton : TuxkidsTuxblocksCoreButton {
 @public
  TuxkidsTuxblocksCoreDefenseSelectProblem *problem__;
  float minHeight_;
  TuxkidsTuxblocksCoreDefenseSelectProblemButton *above__, *below__;
  int towerColor_;
  float targetAlpha_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseSelectProblem *problem_;
@property (nonatomic, assign) float minHeight;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseSelectProblemButton *above_;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseSelectProblemButton *below_;
@property (nonatomic, assign) int towerColor;
@property (nonatomic, assign) float targetAlpha;

+ (int)MARGIN;
- (TuxkidsTuxblocksCoreSolveExpressionEquation *)equation;
- (void)setEquationWithTuxkidsTuxblocksCoreSolveExpressionEquation:(TuxkidsTuxblocksCoreSolveExpressionEquation *)equation;
- (void)setAboveWithTuxkidsTuxblocksCoreDefenseSelectProblemButton:(TuxkidsTuxblocksCoreDefenseSelectProblemButton *)above;
- (void)setBelowWithTuxkidsTuxblocksCoreDefenseSelectProblemButton:(TuxkidsTuxblocksCoreDefenseSelectProblemButton *)below;
- (TuxkidsTuxblocksCoreDefenseSelectProblemButton *)above;
- (TuxkidsTuxblocksCoreDefenseSelectProblemButton *)below;
- (TuxkidsTuxblocksCoreDefenseSelectProblem *)problem;
- (id)initWithTuxkidsTuxblocksCoreDefenseSelectProblem:(TuxkidsTuxblocksCoreDefenseSelectProblem *)problem
                                             withFloat:(float)width
                                             withFloat:(float)minHeight
                                               withInt:(int)towerColor;
+ (id<PlaynCoreImage>)createImageWithTuxkidsTuxblocksCoreDefenseSelectProblem:(TuxkidsTuxblocksCoreDefenseSelectProblem *)problem
                                                                    withFloat:(float)width
                                                                    withFloat:(float)minHeight
                                                                      withInt:(int)towerColor;
- (void)fadeInWithFloat:(float)targetAlpha;
- (void)fadeOut;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
@end

#endif // _TuxkidsTuxblocksCoreDefenseSelectProblemButton_H_
