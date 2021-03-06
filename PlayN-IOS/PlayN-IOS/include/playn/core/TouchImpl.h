//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/TouchImpl.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreTouchImpl_RESTRICT
#define PlaynCoreTouchImpl_INCLUDE_ALL 1
#endif
#undef PlaynCoreTouchImpl_RESTRICT

#if !defined (_PlaynCoreTouchImpl_) && (PlaynCoreTouchImpl_INCLUDE_ALL || PlaynCoreTouchImpl_INCLUDE)
#define _PlaynCoreTouchImpl_

@class IOSObjectArray;
@protocol JavaUtilMap;
@protocol PlaynCoreAbstractLayer_Interaction;
@protocol PlaynCoreDispatcher;
@protocol PlaynCoreLayer;
@protocol PlaynCoreTouch_Listener;

#define PlaynCoreTouch_RESTRICT 1
#define PlaynCoreTouch_INCLUDE 1
#include "playn/core/Touch.h"

@interface PlaynCoreTouchImpl : NSObject < PlaynCoreTouch > {
 @public
  BOOL enabled_;
  id<PlaynCoreDispatcher> dispatcher_;
  id<PlaynCoreTouch_Listener> listener__;
  id<JavaUtilMap> activeLayers_;
}

@property (nonatomic, assign) BOOL enabled;
@property (nonatomic, strong) id<PlaynCoreDispatcher> dispatcher;
@property (nonatomic, strong) id<PlaynCoreTouch_Listener> listener_;
@property (nonatomic, strong) id<JavaUtilMap> activeLayers;

+ (id<PlaynCoreAbstractLayer_Interaction>)START;
+ (void)setSTART:(id<PlaynCoreAbstractLayer_Interaction>)START;
+ (id<PlaynCoreAbstractLayer_Interaction>)MOVE;
+ (void)setMOVE:(id<PlaynCoreAbstractLayer_Interaction>)MOVE;
+ (id<PlaynCoreAbstractLayer_Interaction>)END;
+ (void)setEND:(id<PlaynCoreAbstractLayer_Interaction>)END;
+ (id<PlaynCoreAbstractLayer_Interaction>)CANCEL;
+ (void)setCANCEL:(id<PlaynCoreAbstractLayer_Interaction>)CANCEL;
- (BOOL)hasTouch;
- (BOOL)isEnabled;
- (void)setEnabledWithBOOL:(BOOL)enabled;
- (id<PlaynCoreTouch_Listener>)listener;
- (void)setListenerWithPlaynCoreTouch_Listener:(id<PlaynCoreTouch_Listener>)listener;
- (void)cancelLayerTouchesWithPlaynCoreLayer:(id<PlaynCoreLayer>)except;
- (void)setPropagateEventsWithBOOL:(BOOL)propagate;
- (void)onTouchStartWithPlaynCoreTouch_Event_ImplArray:(IOSObjectArray *)touches;
- (void)onTouchMoveWithPlaynCoreTouch_Event_ImplArray:(IOSObjectArray *)touches;
- (void)onTouchEndWithPlaynCoreTouch_Event_ImplArray:(IOSObjectArray *)touches;
- (void)onTouchCancelWithPlaynCoreTouch_Event_ImplArray:(IOSObjectArray *)touches;
- (id)init;
@end
#endif

#if !defined (_PlaynCoreTouchImpl_$1_) && (PlaynCoreTouchImpl_INCLUDE_ALL || PlaynCoreTouchImpl_$1_INCLUDE)
#define _PlaynCoreTouchImpl_$1_

@class PlaynCoreTouch_Event_Impl;
@protocol PlaynCoreTouch_LayerListener;

#define PlaynCoreAbstractLayer_RESTRICT 1
#define PlaynCoreAbstractLayer_Interaction_INCLUDE 1
#include "playn/core/AbstractLayer.h"

@interface PlaynCoreTouchImpl_$1 : NSObject < PlaynCoreAbstractLayer_Interaction > {
}

- (void)interactWithId:(id<PlaynCoreTouch_LayerListener>)l
                withId:(PlaynCoreTouch_Event_Impl *)ev;
- (id)init;
@end
#endif

#if !defined (_PlaynCoreTouchImpl_$2_) && (PlaynCoreTouchImpl_INCLUDE_ALL || PlaynCoreTouchImpl_$2_INCLUDE)
#define _PlaynCoreTouchImpl_$2_

@class PlaynCoreTouch_Event_Impl;
@protocol PlaynCoreTouch_LayerListener;

#define PlaynCoreAbstractLayer_RESTRICT 1
#define PlaynCoreAbstractLayer_Interaction_INCLUDE 1
#include "playn/core/AbstractLayer.h"

@interface PlaynCoreTouchImpl_$2 : NSObject < PlaynCoreAbstractLayer_Interaction > {
}

- (void)interactWithId:(id<PlaynCoreTouch_LayerListener>)l
                withId:(PlaynCoreTouch_Event_Impl *)ev;
- (id)init;
@end
#endif

#if !defined (_PlaynCoreTouchImpl_$3_) && (PlaynCoreTouchImpl_INCLUDE_ALL || PlaynCoreTouchImpl_$3_INCLUDE)
#define _PlaynCoreTouchImpl_$3_

@class PlaynCoreTouch_Event_Impl;
@protocol PlaynCoreTouch_LayerListener;

#define PlaynCoreAbstractLayer_RESTRICT 1
#define PlaynCoreAbstractLayer_Interaction_INCLUDE 1
#include "playn/core/AbstractLayer.h"

@interface PlaynCoreTouchImpl_$3 : NSObject < PlaynCoreAbstractLayer_Interaction > {
}

- (void)interactWithId:(id<PlaynCoreTouch_LayerListener>)l
                withId:(PlaynCoreTouch_Event_Impl *)ev;
- (id)init;
@end
#endif

#if !defined (_PlaynCoreTouchImpl_$4_) && (PlaynCoreTouchImpl_INCLUDE_ALL || PlaynCoreTouchImpl_$4_INCLUDE)
#define _PlaynCoreTouchImpl_$4_

@class PlaynCoreTouch_Event_Impl;
@protocol PlaynCoreTouch_LayerListener;

#define PlaynCoreAbstractLayer_RESTRICT 1
#define PlaynCoreAbstractLayer_Interaction_INCLUDE 1
#include "playn/core/AbstractLayer.h"

@interface PlaynCoreTouchImpl_$4 : NSObject < PlaynCoreAbstractLayer_Interaction > {
}

- (void)interactWithId:(id<PlaynCoreTouch_LayerListener>)l
                withId:(PlaynCoreTouch_Event_Impl *)ev;
- (id)init;
@end
#endif
