//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/MouseInput.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUtilMouseInput_RESTRICT
#define TripleplayUtilMouseInput_INCLUDE_ALL 1
#endif
#undef TripleplayUtilMouseInput_RESTRICT

#if !defined (_TripleplayUtilMouseInput_) && (TripleplayUtilMouseInput_INCLUDE_ALL || TripleplayUtilMouseInput_INCLUDE)
#define _TripleplayUtilMouseInput_

@class TripleplayUtilInput_Region;
@class TripleplayUtilMouseInput_MouseReactor;
@protocol PlaynCoreMouse_Listener;
@protocol TripleplayUtilInput_Registration;

#define TripleplayUtilInput_RESTRICT 1
#define TripleplayUtilInput_INCLUDE 1
#include "tripleplay/util/Input.h"

@interface TripleplayUtilMouseInput : TripleplayUtilInput {
 @public
  TripleplayUtilMouseInput_MouseReactor *_reactor_;
  id<PlaynCoreMouse_Listener> mlistener_;
}

@property (nonatomic, strong) TripleplayUtilMouseInput_MouseReactor *_reactor;
@property (nonatomic, strong) id<PlaynCoreMouse_Listener> mlistener;

- (id<TripleplayUtilInput_Registration>)register__WithTripleplayUtilInput_Region:(TripleplayUtilInput_Region *)region
                                                                          withId:(id<PlaynCoreMouse_Listener>)listener;
- (id)init;
@end
#endif

#if !defined (_TripleplayUtilMouseInput_MouseReactor_) && (TripleplayUtilMouseInput_INCLUDE_ALL || TripleplayUtilMouseInput_MouseReactor_INCLUDE)
#define _TripleplayUtilMouseInput_MouseReactor_

@class TripleplayUtilMouseInput;
@protocol PlaynCoreMouse_ButtonEvent;
@protocol PlaynCoreMouse_MotionEvent;
@protocol PlaynCoreMouse_WheelEvent;

#define TripleplayUtilInput_RESTRICT 1
#define TripleplayUtilInput_Reactor_INCLUDE 1
#include "tripleplay/util/Input.h"

#define PlaynCoreMouse_RESTRICT 1
#define PlaynCoreMouse_Listener_INCLUDE 1
#include "playn/core/Mouse.h"

@interface TripleplayUtilMouseInput_MouseReactor : TripleplayUtilInput_Reactor < PlaynCoreMouse_Listener > {
 @public
  id<PlaynCoreMouse_Listener> _target_;
  BOOL _down_;
}

@property (nonatomic, strong) id<PlaynCoreMouse_Listener> _target;
@property (nonatomic, assign) BOOL _down;

- (void)onMouseDownWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseMoveWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseUpWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event;
- (id)initWithTripleplayUtilMouseInput:(TripleplayUtilMouseInput *)outer$;
@end
#endif
