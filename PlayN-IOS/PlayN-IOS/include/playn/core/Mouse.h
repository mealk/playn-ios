//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Mouse.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreMouse_RESTRICT
#define PlaynCoreMouse_INCLUDE_ALL 1
#endif
#undef PlaynCoreMouse_RESTRICT
#if PlaynCoreMouse_LayerAdapter_INCLUDE
#define PlaynCoreMouse_LayerListener_INCLUDE 1
#endif
#if PlaynCoreMouse_Adapter_INCLUDE
#define PlaynCoreMouse_Listener_INCLUDE 1
#endif
#if PlaynCoreMouse_WheelEvent_Impl_INCLUDE
#define PlaynCoreMouse_WheelEvent_INCLUDE 1
#endif
#if PlaynCoreMouse_MotionEvent_Impl_INCLUDE
#define PlaynCoreMouse_MotionEvent_INCLUDE 1
#endif
#if PlaynCoreMouse_ButtonEvent_Impl_INCLUDE
#define PlaynCoreMouse_ButtonEvent_INCLUDE 1
#endif

#if !defined (_PlaynCoreMouse_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_INCLUDE)
#define _PlaynCoreMouse_

@protocol PlaynCoreMouse_Listener;

#define PlaynCoreMouse_BUTTON_LEFT 0
#define PlaynCoreMouse_BUTTON_MIDDLE 1
#define PlaynCoreMouse_BUTTON_RIGHT 2

@protocol PlaynCoreMouse < NSObject, JavaObject >
- (BOOL)hasMouse;
- (BOOL)isEnabled;
- (void)setEnabledWithBOOL:(BOOL)enabled;
- (id<PlaynCoreMouse_Listener>)listener;
- (void)setListenerWithPlaynCoreMouse_Listener:(id<PlaynCoreMouse_Listener>)listener;
- (void)lock;
- (void)unlock;
- (BOOL)isLocked;
- (BOOL)isLockSupported;
@end

@interface PlaynCoreMouse : NSObject {
}
+ (int)BUTTON_LEFT;
+ (int)BUTTON_MIDDLE;
+ (int)BUTTON_RIGHT;
@end
#endif

#if !defined (_PlaynCoreMouse_ButtonEvent_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_ButtonEvent_INCLUDE)
#define _PlaynCoreMouse_ButtonEvent_

#define PlaynCoreEvents_RESTRICT 1
#define PlaynCoreEvents_Position_INCLUDE 1
#include "playn/core/Events.h"

@protocol PlaynCoreMouse_ButtonEvent < PlaynCoreEvents_Position, NSObject, JavaObject >
- (int)button;
@end
#endif

#if !defined (_PlaynCoreMouse_ButtonEvent_Impl_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_ButtonEvent_Impl_INCLUDE)
#define _PlaynCoreMouse_ButtonEvent_Impl_

@class JavaLangStringBuilder;
@protocol PlaynCoreEvents_Flags;
@protocol PlaynCoreLayer;

#define PlaynCoreEvents_RESTRICT 1
#define PlaynCoreEvents_Position_Impl_INCLUDE 1
#include "playn/core/Events.h"

@interface PlaynCoreMouse_ButtonEvent_Impl : PlaynCoreEvents_Position_Impl < PlaynCoreMouse_ButtonEvent > {
 @public
  int button__;
}

@property (nonatomic, assign) int button_;

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                            withInt:(int)button;
- (int)button;
- (PlaynCoreMouse_ButtonEvent_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y
                     withInt:(int)button;
- (NSString *)name;
- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder;
@end
#endif

#if !defined (_PlaynCoreMouse_MotionEvent_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_MotionEvent_INCLUDE)
#define _PlaynCoreMouse_MotionEvent_

#define PlaynCoreEvents_RESTRICT 1
#define PlaynCoreEvents_Position_INCLUDE 1
#include "playn/core/Events.h"

@protocol PlaynCoreMouse_MotionEvent < PlaynCoreEvents_Position, NSObject, JavaObject >
- (float)dx;
- (float)dy;
@end
#endif

#if !defined (_PlaynCoreMouse_MotionEvent_Impl_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_MotionEvent_Impl_INCLUDE)
#define _PlaynCoreMouse_MotionEvent_Impl_

@protocol PlaynCoreEvents_Flags;
@protocol PlaynCoreLayer;

#define PlaynCoreEvents_RESTRICT 1
#define PlaynCoreEvents_Position_Impl_INCLUDE 1
#include "playn/core/Events.h"

@interface PlaynCoreMouse_MotionEvent_Impl : PlaynCoreEvents_Position_Impl < PlaynCoreMouse_MotionEvent > {
 @public
  float dx__, dy__;
}

@property (nonatomic, assign) float dx_;
@property (nonatomic, assign) float dy_;

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                          withFloat:(float)dx
                          withFloat:(float)dy;
- (float)dx;
- (float)dy;
- (PlaynCoreMouse_MotionEvent_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y
                   withFloat:(float)dx
                   withFloat:(float)dy;
- (NSString *)name;
@end
#endif

#if !defined (_PlaynCoreMouse_WheelEvent_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_WheelEvent_INCLUDE)
#define _PlaynCoreMouse_WheelEvent_

#define PlaynCoreEvents_RESTRICT 1
#define PlaynCoreEvents_Position_INCLUDE 1
#include "playn/core/Events.h"

@protocol PlaynCoreMouse_WheelEvent < PlaynCoreEvents_Position, NSObject, JavaObject >
- (float)velocity;
@end
#endif

#if !defined (_PlaynCoreMouse_WheelEvent_Impl_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_WheelEvent_Impl_INCLUDE)
#define _PlaynCoreMouse_WheelEvent_Impl_

@class JavaLangStringBuilder;
@protocol PlaynCoreEvents_Flags;
@protocol PlaynCoreLayer;

#define PlaynCoreEvents_RESTRICT 1
#define PlaynCoreEvents_Position_Impl_INCLUDE 1
#include "playn/core/Events.h"

@interface PlaynCoreMouse_WheelEvent_Impl : PlaynCoreEvents_Position_Impl < PlaynCoreMouse_WheelEvent > {
 @public
  float velocity__;
}

@property (nonatomic, assign) float velocity_;

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                          withFloat:(float)velocity;
- (float)velocity;
- (NSString *)name;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y
                   withFloat:(float)velocity;
- (PlaynCoreMouse_WheelEvent_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit;
- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder;
@end
#endif

#if !defined (_PlaynCoreMouse_Listener_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_Listener_INCLUDE)
#define _PlaynCoreMouse_Listener_

@protocol PlaynCoreMouse_ButtonEvent;
@protocol PlaynCoreMouse_MotionEvent;
@protocol PlaynCoreMouse_WheelEvent;

@protocol PlaynCoreMouse_Listener < NSObject, JavaObject >
- (void)onMouseDownWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseUpWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseMoveWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event;
@end
#endif

#if !defined (_PlaynCoreMouse_Adapter_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_Adapter_INCLUDE)
#define _PlaynCoreMouse_Adapter_

@protocol PlaynCoreMouse_ButtonEvent;
@protocol PlaynCoreMouse_MotionEvent;
@protocol PlaynCoreMouse_WheelEvent;

@interface PlaynCoreMouse_Adapter : NSObject < PlaynCoreMouse_Listener > {
}

- (void)onMouseDownWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseUpWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseMoveWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event;
- (id)init;
@end
#endif

#if !defined (_PlaynCoreMouse_LayerListener_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_LayerListener_INCLUDE)
#define _PlaynCoreMouse_LayerListener_

@protocol PlaynCoreMouse_ButtonEvent;
@protocol PlaynCoreMouse_MotionEvent;
@protocol PlaynCoreMouse_WheelEvent;

@protocol PlaynCoreMouse_LayerListener < NSObject, JavaObject >
- (void)onMouseDownWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseUpWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseDragWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseMoveWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseOverWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseOutWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event;
@end
#endif

#if !defined (_PlaynCoreMouse_LayerAdapter_) && (PlaynCoreMouse_INCLUDE_ALL || PlaynCoreMouse_LayerAdapter_INCLUDE)
#define _PlaynCoreMouse_LayerAdapter_

@protocol PlaynCoreMouse_ButtonEvent;
@protocol PlaynCoreMouse_MotionEvent;
@protocol PlaynCoreMouse_WheelEvent;

@interface PlaynCoreMouse_LayerAdapter : NSObject < PlaynCoreMouse_LayerListener > {
}

- (void)onMouseDownWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseUpWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event;
- (void)onMouseDragWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseMoveWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseOverWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseOutWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event;
- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event;
- (id)init;
@end
#endif
