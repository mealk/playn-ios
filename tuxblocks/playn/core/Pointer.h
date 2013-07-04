//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Pointer.java
//
//  Created by Thomas on 7/1/13.
//

@protocol PlaynCoreEvents_Flags;
@protocol PlaynCoreLayer;
@protocol PlaynCorePointer_Listener;

#import "JreEmulation.h"
#import "Events.h"

@protocol PlaynCorePointer < NSObject >
- (BOOL)isEnabled;
- (void)setEnabledWithBOOL:(BOOL)enabled;
- (id<PlaynCorePointer_Listener>)listener;
- (void)setListenerWithPlaynCorePointer_Listener:(id<PlaynCorePointer_Listener>)listener;
- (void)cancelLayerDrags;
@end

@protocol PlaynCorePointer_Event < PlaynCoreEvents_Position, NSObject >
- (BOOL)isTouch;
@end

@interface PlaynCorePointer_Event_Impl : PlaynCoreEvents_Position_Impl < PlaynCorePointer_Event > {
 @public
  BOOL isTouch__;
}

@property (nonatomic, assign) BOOL isTouch_;

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                           withBOOL:(BOOL)isTouch;
- (PlaynCorePointer_Event_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit;
- (BOOL)isTouch;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y
                    withBOOL:(BOOL)isTouch;
- (NSString *)name;
@end

@protocol PlaynCorePointer_Listener < NSObject >
- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
@end

@interface PlaynCorePointer_Adapter : NSObject < PlaynCorePointer_Listener > {
}

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (id)init;
@end
