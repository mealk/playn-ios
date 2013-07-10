//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Touch.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSObjectArray;
@class JavaLangStringBuilder;
@protocol PlaynCoreEvents_Flags;
@protocol PlaynCoreLayer;
@protocol PlaynCoreTouch_Listener;

#import "JreEmulation.h"
#import "playn/core/Events.h"

@protocol PlaynCoreTouch < NSObject >
- (BOOL)hasTouch;
- (BOOL)isEnabled;
- (void)setEnabledWithBOOL:(BOOL)enabled;
- (id<PlaynCoreTouch_Listener>)listener;
- (void)setListenerWithPlaynCoreTouch_Listener:(id<PlaynCoreTouch_Listener>)listener;
- (void)cancelLayerTouchesWithPlaynCoreLayer:(id<PlaynCoreLayer>)except;
@end

@protocol PlaynCoreTouch_Event < PlaynCoreEvents_Position, NSObject >
- (int)id__;
- (float)pressure;
- (float)size;
@end

@interface PlaynCoreTouch_Event_Impl : PlaynCoreEvents_Position_Impl < PlaynCoreTouch_Event > {
 @public
  int id__;
  float pressure__;
  float size__;
}

@property (nonatomic, assign) int id_;
@property (nonatomic, assign) float pressure_;
@property (nonatomic, assign) float size_;

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                            withInt:(int)id_;
- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                            withInt:(int)id_
                          withFloat:(float)pressure
                          withFloat:(float)size;
- (PlaynCoreTouch_Event_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit;
- (int)id__;
- (float)pressure;
- (float)size;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y
                     withInt:(int)id_
                   withFloat:(float)pressure
                   withFloat:(float)size;
- (NSString *)name;
- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder;
@end

@protocol PlaynCoreTouch_Listener < NSObject >
- (void)onTouchStartWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (void)onTouchMoveWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (void)onTouchEndWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (void)onTouchCancelWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
@end

@interface PlaynCoreTouch_Adapter : NSObject < PlaynCoreTouch_Listener > {
}

- (void)onTouchStartWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (void)onTouchMoveWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (void)onTouchEndWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (void)onTouchCancelWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touch;
- (id)init;
@end

@protocol PlaynCoreTouch_LayerListener < NSObject >
- (void)onTouchStartWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchMoveWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchEndWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchCancelWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
@end

@interface PlaynCoreTouch_LayerAdapter : NSObject < PlaynCoreTouch_LayerListener > {
}

- (void)onTouchStartWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchMoveWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchEndWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchCancelWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (id)init;
@end
