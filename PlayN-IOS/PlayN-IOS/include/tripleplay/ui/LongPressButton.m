//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/LongPressButton.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Integer.h"
#include "playn/core/Image.h"
#include "playn/core/PlayN.h"
#include "playn/core/Pointer.h"
#include "playn/core/Sound.h"
#include "react/Signal.h"
#include "react/SignalView.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/Icon.h"
#include "tripleplay/ui/Icons.h"
#include "tripleplay/ui/Interface.h"
#include "tripleplay/ui/LongPressButton.h"
#include "tripleplay/ui/Root.h"
#include "tripleplay/ui/Style.h"

@implementation TripleplayUiLongPressButton

static TripleplayUiStyle * TripleplayUiLongPressButton_LONG_PRESS_INTERVAL_;

@synthesize _longPressed = _longPressed_;
@synthesize _longPressInterval = _longPressInterval_;
@synthesize _longPressReg = _longPressReg_;

+ (TripleplayUiStyle *)LONG_PRESS_INTERVAL {
  return TripleplayUiLongPressButton_LONG_PRESS_INTERVAL_;
}

+ (void)setLONG_PRESS_INTERVAL:(TripleplayUiStyle *)LONG_PRESS_INTERVAL {
  TripleplayUiLongPressButton_LONG_PRESS_INTERVAL_ = LONG_PRESS_INTERVAL;
}

- (id)init {
  return [self initTripleplayUiLongPressButtonWithNSString:nil withTripleplayUiIcon:(id<TripleplayUiIcon>) nil];
}

- (id)initWithNSString:(NSString *)text {
  return [self initTripleplayUiLongPressButtonWithNSString:text withTripleplayUiIcon:(id<TripleplayUiIcon>) nil];
}

- (id)initWithTripleplayUiIcon:(id<TripleplayUiIcon>)icon {
  return [self initTripleplayUiLongPressButtonWithNSString:nil withTripleplayUiIcon:icon];
}

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)icon {
  return [self initTripleplayUiLongPressButtonWithNSString:nil withTripleplayUiIcon:[TripleplayUiIcons imageWithPlaynCoreImage:icon]];
}

- (id)initWithNSString:(NSString *)text
    withPlaynCoreImage:(id<PlaynCoreImage>)icon {
  return [self initTripleplayUiLongPressButtonWithNSString:text withTripleplayUiIcon:[TripleplayUiIcons imageWithPlaynCoreImage:icon]];
}

- (id)initTripleplayUiLongPressButtonWithNSString:(NSString *)text
                             withTripleplayUiIcon:(id<TripleplayUiIcon>)icon {
  if ((self = [super initWithNSString:text withTripleplayUiIcon:icon])) {
    _longPressed_ = [ReactSignal create];
  }
  return self;
}

- (id)initWithNSString:(NSString *)text
  withTripleplayUiIcon:(id<TripleplayUiIcon>)icon {
  return [self initTripleplayUiLongPressButtonWithNSString:text withTripleplayUiIcon:icon];
}

- (id<ReactSignalView>)longPressed {
  return _longPressed_;
}

- (void)longPress {
  if (_actionSound_ != nil) [_actionSound_ play];
  [((ReactSignal *) nil_chk(_longPressed_)) emitWithId:self];
}

- (void)layout {
  [super layout];
  _longPressInterval_ = [((JavaLangInteger *) nil_chk([self resolveStyleWithTripleplayUiStyle:TripleplayUiLongPressButton_LONG_PRESS_INTERVAL_])) intValue];
}

- (void)onPressWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [super onPressWithPlaynCorePointer_Event:event];
  [self startLongPressTimer];
}

- (void)onHoverWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                 withBOOL:(BOOL)inBounds {
  [super onHoverWithPlaynCorePointer_Event:event withBOOL:inBounds];
  if (!inBounds) [self cancelLongPressTimer];
  else [self startLongPressTimer];
}

- (void)onReleaseWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [super onReleaseWithPlaynCorePointer_Event:event];
  [self cancelLongPressTimer];
}

- (void)startLongPressTimer {
  if (_longPressInterval_ > 0 && _longPressReg_ == nil) {
    _longPressReg_ = [((TripleplayUiInterface *) nil_chk([((TripleplayUiRoot *) nil_chk([self root])) iface])) addTaskWithTripleplayUiInterface_Task:[[TripleplayUiLongPressButton_$1 alloc] initWithTripleplayUiLongPressButton:self]];
  }
}

- (void)cancelLongPressTimer {
  if (_longPressReg_ != nil) {
    [_longPressReg_ remove];
    _longPressReg_ = nil;
  }
}

- (void)fireLongPress {
  [((id<PlaynCorePointer>) nil_chk([PlaynCorePlayN pointer])) cancelLayerDrags];
  [self cancelLongPressTimer];
  [self longPress];
}

+ (void)initialize {
  if (self == [TripleplayUiLongPressButton class]) {
    TripleplayUiLongPressButton_LONG_PRESS_INTERVAL_ = [TripleplayUiStyle newStyleWithBOOL:YES withId:[JavaLangInteger valueOfWithInt:1000]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLongPressButton *typedCopy = (TripleplayUiLongPressButton *) copy;
  typedCopy._longPressed = _longPressed_;
  typedCopy._longPressInterval = _longPressInterval_;
  typedCopy._longPressReg = _longPressReg_;
}

@end
@implementation TripleplayUiLongPressButton_$1

@synthesize this$0 = this$0_;
@synthesize _accum = _accum_;

- (void)updateWithInt:(int)delta {
  _accum_ += delta;
  if (_accum_ > this$0_._longPressInterval) [this$0_ fireLongPress];
}

- (id)initWithTripleplayUiLongPressButton:(TripleplayUiLongPressButton *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLongPressButton_$1 *typedCopy = (TripleplayUiLongPressButton_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy._accum = _accum_;
}

@end
