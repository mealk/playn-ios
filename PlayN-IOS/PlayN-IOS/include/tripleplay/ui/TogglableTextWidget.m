//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/TogglableTextWidget.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Boolean.h"
#include "playn/core/Pointer.h"
#include "react/Connection.h"
#include "react/SignalView.h"
#include "react/Value.h"
#include "tripleplay/ui/ClickableTextWidget.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/TogglableTextWidget.h"

@implementation TripleplayUiTogglableTextWidget

@synthesize selected_ = selected__;
@synthesize _anchorState = _anchorState_;

- (ReactValue *)selected {
  return selected__;
}

- (id)init {
  if ((self = [super init])) {
    selected__ = [ReactValue createWithId:[JavaLangBoolean valueOfWithBOOL:NO]];
    (void) [((ReactValue *) nil_chk(selected__)) connectWithReactValueView_Listener:[[TripleplayUiTogglableTextWidget_$1 alloc] initWithTripleplayUiTogglableTextWidget:self]];
  }
  return self;
}

- (void)onPressWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  _anchorState_ = [self isSelected];
  (void) [((ReactValue *) nil_chk(selected__)) updateWithId:[JavaLangBoolean valueOfWithBOOL:!_anchorState_]];
}

- (void)onHoverWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                 withBOOL:(BOOL)inBounds {
  (void) [((ReactValue *) nil_chk(selected__)) updateWithId:[JavaLangBoolean valueOfWithBOOL:inBounds ? !_anchorState_ : _anchorState_]];
}

- (void)onReleaseWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (_anchorState_ != [self isSelected]) {
    [self onClickWithPlaynCorePointer_Event:event];
  }
}

- (void)onCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  (void) [((ReactValue *) nil_chk(selected__)) updateWithId:[JavaLangBoolean valueOfWithBOOL:_anchorState_]];
}

- (id<ReactSignalView>)clicked {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTogglableTextWidget *typedCopy = (TripleplayUiTogglableTextWidget *) copy;
  typedCopy.selected_ = selected__;
  typedCopy._anchorState = _anchorState_;
}

@end
@implementation TripleplayUiTogglableTextWidget_$1

@synthesize this$0 = this$0_;

- (void)onEmitWithId:(JavaLangBoolean *)selected {
  if ([((JavaLangBoolean *) nil_chk(selected)) booleanValue] != [this$0_ isSelected]) {
    [this$0_ setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum SELECTED] withBOOL:[((JavaLangBoolean *) nil_chk(selected)) booleanValue]];
    [this$0_ invalidate];
  }
}

- (id)initWithTripleplayUiTogglableTextWidget:(TripleplayUiTogglableTextWidget *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTogglableTextWidget_$1 *typedCopy = (TripleplayUiTogglableTextWidget_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
