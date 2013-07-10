//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/game/trans/SlideTransition.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/GroupLayer.h"
#import "playn/core/Layer.h"
#import "tripleplay/game/Screen.h"
#import "tripleplay/game/ScreenStack.h"
#import "tripleplay/game/trans/SlideTransition.h"
#import "tripleplay/util/Interpolator.h"

@implementation TripleplayGameTransSlideTransition

@synthesize _originX = _originX_;
@synthesize _originY = _originY_;
@synthesize _dir = _dir_;
@synthesize _osx = _osx_;
@synthesize _osy = _osy_;
@synthesize _odx = _odx_;
@synthesize _ody = _ody_;
@synthesize _nsx = _nsx_;
@synthesize _nsy = _nsy_;

- (TripleplayGameTransSlideTransition *)up {
  return [self dirWithTripleplayGameScreenStack_Transition_DirEnum:[TripleplayGameScreenStack_Transition_DirEnum UP]];
}

- (TripleplayGameTransSlideTransition *)down {
  return [self dirWithTripleplayGameScreenStack_Transition_DirEnum:[TripleplayGameScreenStack_Transition_DirEnum DOWN]];
}

- (TripleplayGameTransSlideTransition *)left {
  return [self dirWithTripleplayGameScreenStack_Transition_DirEnum:[TripleplayGameScreenStack_Transition_DirEnum LEFT]];
}

- (TripleplayGameTransSlideTransition *)right {
  return [self dirWithTripleplayGameScreenStack_Transition_DirEnum:[TripleplayGameScreenStack_Transition_DirEnum RIGHT]];
}

- (TripleplayGameTransSlideTransition *)dirWithTripleplayGameScreenStack_Transition_DirEnum:(TripleplayGameScreenStack_Transition_DirEnum *)dir {
  _dir_ = dir;
  return self;
}

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)stack {
  if ((self = [super init])) {
    _dir_ = [TripleplayGameScreenStack_Transition_DirEnum LEFT];
    _originX_ = ((TripleplayGameScreenStack *) NIL_CHK(stack)).originX;
    _originY_ = ((TripleplayGameScreenStack *) NIL_CHK(stack)).originY;
  }
  return self;
}

- (void)init__WithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen OBJC_METHOD_FAMILY_NONE {
  [super init__WithTripleplayGameScreen:oscreen withTripleplayGameScreen:nscreen];
  switch ([_dir_ ordinal]) {
    case TripleplayGameScreenStack_Transition_Dir_UP:
    _odx_ = _originX_;
    _ody_ = _originY_ - [((TripleplayGameScreen *) NIL_CHK(oscreen)) height];
    _nsx_ = _originX_;
    _nsy_ = _originY_ + [((TripleplayGameScreen *) NIL_CHK(nscreen)) height];
    break;
    case TripleplayGameScreenStack_Transition_Dir_DOWN:
    _odx_ = _originX_;
    _ody_ = _originY_ + [((TripleplayGameScreen *) NIL_CHK(oscreen)) height];
    _nsx_ = _originX_;
    _nsy_ = _originY_ - [((TripleplayGameScreen *) NIL_CHK(nscreen)) height];
    break;
    case TripleplayGameScreenStack_Transition_Dir_LEFT:
    default:
    _odx_ = _originX_ - [((TripleplayGameScreen *) NIL_CHK(oscreen)) width];
    _ody_ = _originY_;
    _nsx_ = _originX_ + [((TripleplayGameScreen *) NIL_CHK(nscreen)) width];
    _nsy_ = _originY_;
    break;
    case TripleplayGameScreenStack_Transition_Dir_RIGHT:
    _odx_ = _originX_ + [((TripleplayGameScreen *) NIL_CHK(oscreen)) width];
    _ody_ = _originY_;
    _nsx_ = _originX_ - [((TripleplayGameScreen *) NIL_CHK(nscreen)) width];
    _nsy_ = _originY_;
    break;
  }
  _osx_ = [((id<PlaynCoreGroupLayer>) NIL_CHK(oscreen.layer)) tx];
  _osy_ = [((id<PlaynCoreGroupLayer>) NIL_CHK(oscreen.layer)) ty];
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(nscreen.layer)) setTranslationWithFloat:_nsx_ withFloat:_nsy_];
}

- (BOOL)updateWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
                             withFloat:(float)elapsed {
  float ox = [((TripleplayUtilInterpolator *) NIL_CHK(_interp_)) applyWithFloat:_originX_ withFloat:_odx_ - _originX_ withFloat:elapsed withFloat:_duration_];
  float oy = [((TripleplayUtilInterpolator *) NIL_CHK(_interp_)) applyWithFloat:_originY_ withFloat:_ody_ - _originY_ withFloat:elapsed withFloat:_duration_];
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(oscreen.layer)) setTranslationWithFloat:ox withFloat:oy];
  float nx = [((TripleplayUtilInterpolator *) NIL_CHK(_interp_)) applyWithFloat:_nsx_ withFloat:_originX_ - _nsx_ withFloat:elapsed withFloat:_duration_];
  float ny = [((TripleplayUtilInterpolator *) NIL_CHK(_interp_)) applyWithFloat:_nsy_ withFloat:_originY_ - _nsy_ withFloat:elapsed withFloat:_duration_];
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(nscreen.layer)) setTranslationWithFloat:nx withFloat:ny];
  return elapsed >= _duration_;
}

- (void)completeWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
                withTripleplayGameScreen:(TripleplayGameScreen *)nscreen {
  [super completeWithTripleplayGameScreen:oscreen withTripleplayGameScreen:nscreen];
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(oscreen.layer)) setTranslationWithFloat:_osx_ withFloat:_osy_];
}

- (float)defaultDuration {
  return 500;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameTransSlideTransition *typedCopy = (TripleplayGameTransSlideTransition *) copy;
  typedCopy._originX = _originX_;
  typedCopy._originY = _originY_;
  typedCopy._dir = _dir_;
  typedCopy._osx = _osx_;
  typedCopy._osy = _osy_;
  typedCopy._odx = _odx_;
  typedCopy._ody = _ody_;
  typedCopy._nsx = _nsx_;
  typedCopy._nsy = _nsy_;
}

@end