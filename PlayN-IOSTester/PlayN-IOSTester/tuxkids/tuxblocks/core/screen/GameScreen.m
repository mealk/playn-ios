//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/screen/GameScreen.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Key.h"
#include "playn/core/Keyboard.h"
#include "playn/core/Layer.h"
#include "playn/core/PlayN.h"
#include "pythagoras/f/Vector.h"
#include "tripleplay/game/ScreenStack.h"
#include "tripleplay/game/trans/SlideTransition.h"
#include "tuxkids/tuxblocks/core/Button.h"
#include "tuxkids/tuxblocks/core/GameBackgroundSprite.h"
#include "tuxkids/tuxblocks/core/GameState.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"
#include "tuxkids/tuxblocks/core/screen/GameScreen.h"

@implementation TuxkidsTuxblocksCoreScreenGameScreen

@synthesize screens = screens_;
@synthesize state_ = state__;
@synthesize topActivity = topActivity_;
@synthesize onScreenFinishedListener = onScreenFinishedListener_;
@synthesize depth = depth_;
@synthesize entering_ = entering__;
@synthesize exiting_ = exiting__;
@synthesize lastTx = lastTx_;
@synthesize lastTy = lastTy_;

+ (float)defaultButtonSize {
  return [((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCoreScreenGameScreen graphics])) height] * 0.15f;
}

- (TuxkidsTuxblocksCoreButton *)createMenuButtonWithNSString:(NSString *)path {
  TuxkidsTuxblocksCoreButton *button = [[TuxkidsTuxblocksCoreButton alloc] initWithNSString:path withFloat:[TuxkidsTuxblocksCoreScreenGameScreen defaultButtonSize] withFloat:[TuxkidsTuxblocksCoreScreenGameScreen defaultButtonSize] withBOOL:YES];
  [((TuxkidsTuxblocksCoreButton *) nil_chk(button)) setTintWithInt:[((TuxkidsTuxblocksCoreGameState *) nil_chk(state__)) themeColor]];
  return button;
}

- (BOOL)exiting {
  return exiting__;
}

- (BOOL)entering {
  return entering__;
}

- (void)wasShown {
  [super wasShown];
  [((id<PlaynCoreKeyboard>) nil_chk([PlaynCorePlayN keyboard])) setListenerWithPlaynCoreKeyboard_Listener:self];
  entering__ = YES;
}

- (void)showTransitionCompleted {
  [super showTransitionCompleted];
  lastTx_ = 0;
  lastTy_ = 0;
  entering__ = NO;
}

- (void)hideTransitionStarted {
  exiting__ = YES;
}

- (void)wasHidden {
  exiting__ = NO;
}

- (void)updateWithInt:(int)delta {
  if ([self exiting]) {
    [((TuxkidsTuxblocksCoreGameBackgroundSprite *) nil_chk([((TuxkidsTuxblocksCoreGameState *) nil_chk(state__)) background])) scrollWithFloat:[((id<PlaynCoreGroupLayer>) nil_chk(layer_)) tx] - lastTx_ withFloat:[((id<PlaynCoreGroupLayer>) nil_chk(layer_)) ty] - lastTy_];
    lastTx_ = [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) tx];
    lastTy_ = [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) ty];
  }
}

- (void)wasRemoved {
}

- (int)getDepth {
  return depth_;
}

- (TuxkidsTuxblocksCoreGameState *)state {
  return state__;
}

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)screens
      withTuxkidsTuxblocksCoreGameState:(TuxkidsTuxblocksCoreGameState *)state {
  if ((self = [super init])) {
    self.screens = screens;
    self.state_ = state;
  }
  return self;
}

+ (id<PlaynCoreGraphics>)graphics {
  return [PlaynCorePlayN graphics];
}

+ (float)lerpWithFloat:(float)x0
             withFloat:(float)x1
             withFloat:(float)perc {
  return [TuxkidsTuxblocksCorePlayNObject lerpWithFloat:x0 withFloat:x1 withFloat:perc];
}

+ (void)lerpWithPythagorasFVector:(PythagorasFVector *)v0
                        withFloat:(float)x1
                        withFloat:(float)y1
                        withFloat:(float)perc {
  [TuxkidsTuxblocksCorePlayNObject lerpWithPythagorasFVector:v0 withFloat:x1 withFloat:y1 withFloat:perc];
}

- (void)pushScreenWithTuxkidsTuxblocksCoreScreenGameScreen:(TuxkidsTuxblocksCoreScreenGameScreen *)screen {
  [self pushScreenWithTuxkidsTuxblocksCoreScreenGameScreen:screen withTripleplayGameScreenStack_Transition:[((TripleplayGameTransSlideTransition *) nil_chk([((TripleplayGameScreenStack *) nil_chk(screens_)) slide])) left]];
}

- (void)pushScreenWithTuxkidsTuxblocksCoreScreenGameScreen:(TuxkidsTuxblocksCoreScreenGameScreen *)screen
                  withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)transition {
  topActivity_ = screen;
  ((TuxkidsTuxblocksCoreScreenGameScreen *) nil_chk(screen)).onScreenFinishedListener = [[TuxkidsTuxblocksCoreScreenGameScreen_$1 alloc] initWithTuxkidsTuxblocksCoreScreenGameScreen:self withTuxkidsTuxblocksCoreScreenGameScreen:screen];
  ((TuxkidsTuxblocksCoreScreenGameScreen *) nil_chk(screen)).depth = depth_ + 1;
  [((TripleplayGameScreenStack *) nil_chk(screens_)) pushWithTripleplayGameScreen:screen withTripleplayGameScreenStack_Transition:transition];
}

- (void)popThisWithTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)transition {
  [((id<PlaynCoreKeyboard>) nil_chk([PlaynCorePlayN keyboard])) setListenerWithPlaynCoreKeyboard_Listener:nil];
  [((TripleplayGameScreenStack *) nil_chk(screens_)) removeWithTripleplayGameScreen:self withTripleplayGameScreenStack_Transition:transition];
  (void) [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) setDepthWithFloat:-1];
  if (onScreenFinishedListener_ != nil) [onScreenFinishedListener_ onScreenFinished];
}

- (void)popThis {
  [self popThisWithTripleplayGameScreenStack_Transition:[((TripleplayGameTransSlideTransition *) nil_chk([((TripleplayGameScreenStack *) nil_chk(screens_)) slide])) right]];
}

- (void)onChildScreenFinishedWithTuxkidsTuxblocksCoreScreenGameScreen:(TuxkidsTuxblocksCoreScreenGameScreen *)screen {
}

- (void)onKeyDownWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event {
  if ([((id<PlaynCoreKeyboard_Event>) nil_chk(event)) key] == [PlaynCoreKeyEnum BACK] || [((id<PlaynCoreKeyboard_Event>) nil_chk(event)) key] == [PlaynCoreKeyEnum ESCAPE]) {
    [self popThis];
  }
}

- (void)onKeyTypedWithPlaynCoreKeyboard_TypedEvent:(id<PlaynCoreKeyboard_TypedEvent>)event {
}

- (void)onKeyUpWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event {
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreScreenGameScreen *typedCopy = (TuxkidsTuxblocksCoreScreenGameScreen *) copy;
  typedCopy.screens = screens_;
  typedCopy.state_ = state__;
  typedCopy.topActivity = topActivity_;
  typedCopy.onScreenFinishedListener = onScreenFinishedListener_;
  typedCopy.depth = depth_;
  typedCopy.entering_ = entering__;
  typedCopy.exiting_ = exiting__;
  typedCopy.lastTx = lastTx_;
  typedCopy.lastTy = lastTy_;
}

@end
@implementation TuxkidsTuxblocksCoreScreenGameScreen_$1

@synthesize this$0 = this$0_;
@synthesize val$screen = val$screen_;

- (void)onScreenFinished {
  [this$0_ onChildScreenFinishedWithTuxkidsTuxblocksCoreScreenGameScreen:val$screen_];
}

- (id)initWithTuxkidsTuxblocksCoreScreenGameScreen:(TuxkidsTuxblocksCoreScreenGameScreen *)outer$
          withTuxkidsTuxblocksCoreScreenGameScreen:(TuxkidsTuxblocksCoreScreenGameScreen *)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$screen_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreScreenGameScreen_$1 *typedCopy = (TuxkidsTuxblocksCoreScreenGameScreen_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$screen = val$screen_;
}

@end
