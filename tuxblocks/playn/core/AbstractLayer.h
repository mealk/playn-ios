//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/AbstractLayer.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSClass;
@class PlaynCoreAbstractLayer_FlagEnum;
@class PlaynCoreAbstractLayer_Interactor;
@class PlaynCoreGlGLShader;
@class PythagorasFPoint;
@protocol PlaynCoreAbstractLayer_Interaction;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCoreInternalTransform;
@protocol PlaynCoreLayer_HitTester;
@protocol PlaynCoreMouse_LayerListener;
@protocol PlaynCorePointer_Listener;
@protocol PlaynCoreTouch_LayerListener;
@protocol PythagorasFTransform;

#import "JreEmulation.h"
#import "Connection.h"
#import "Layer.h"
#import "java/lang/Enum.h"

@interface PlaynCoreAbstractLayer : NSObject < PlaynCoreLayer > {
 @public
  float scaleX__, scaleY__, rotation__;
  id<PlaynCoreInternalTransform> transform__;
  id<PlaynCoreGroupLayer> parent__;
  float originX__, originY__;
  int tint__;
  float alpha__;
  float depth__;
  int flags_;
  PlaynCoreAbstractLayer_Interactor *rootInteractor_;
  id<PlaynCoreLayer_HitTester> hitTester_;
}

@property (nonatomic, assign) float scaleX_;
@property (nonatomic, assign) float scaleY_;
@property (nonatomic, assign) float rotation_;
@property (nonatomic, retain) id<PlaynCoreInternalTransform> transform_;
@property (nonatomic, retain) id<PlaynCoreGroupLayer> parent_;
@property (nonatomic, assign) float originX_;
@property (nonatomic, assign) float originY_;
@property (nonatomic, assign) int tint_;
@property (nonatomic, assign) float alpha_;
@property (nonatomic, assign) float depth_;
@property (nonatomic, assign) int flags;
@property (nonatomic, retain) PlaynCoreAbstractLayer_Interactor *rootInteractor;
@property (nonatomic, retain) id<PlaynCoreLayer_HitTester> hitTester;

- (id)init;
- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)transform;
- (void)destroy;
- (BOOL)destroyed;
- (BOOL)visible;
- (id<PlaynCoreLayer>)setVisibleWithBOOL:(BOOL)visible;
- (BOOL)interactive;
- (id<PlaynCoreLayer>)setInteractiveWithBOOL:(BOOL)interactive;
- (float)alpha;
- (id<PlaynCoreLayer>)setAlphaWithFloat:(float)alpha;
- (int)tint;
- (id<PlaynCoreLayer>)setTintWithInt:(int)tint;
- (float)originX;
- (float)originY;
- (id<PlaynCoreLayer>)setOriginWithFloat:(float)x
                               withFloat:(float)y;
- (float)depth;
- (id<PlaynCoreLayer>)setDepthWithFloat:(float)depth;
- (float)tx;
- (float)ty;
- (id<PlaynCoreLayer>)setTxWithFloat:(float)x;
- (id<PlaynCoreLayer>)setTyWithFloat:(float)y;
- (id<PlaynCoreLayer>)setTranslationWithFloat:(float)x
                                    withFloat:(float)y;
- (float)rotation;
- (id<PlaynCoreLayer>)setRotationWithFloat:(float)angle;
- (float)scaleX;
- (float)scaleY;
- (id<PlaynCoreLayer>)setScaleWithFloat:(float)s;
- (id<PlaynCoreLayer>)setScaleXWithFloat:(float)sx;
- (id<PlaynCoreLayer>)setScaleYWithFloat:(float)sy;
- (id<PlaynCoreLayer>)setScaleWithFloat:(float)sx
                              withFloat:(float)sy;
- (id<PlaynCoreLayer>)hitTestWithPythagorasFPoint:(PythagorasFPoint *)p;
- (id<PlaynCoreLayer>)hitTestDefaultWithPythagorasFPoint:(PythagorasFPoint *)p;
- (id<PlaynCoreLayer>)setHitTesterWithPlaynCoreLayer_HitTester:(id<PlaynCoreLayer_HitTester>)tester;
- (id<PythagorasFTransform>)transform;
- (id<PlaynCoreGroupLayer>)parent;
- (id<PlaynCoreConnection>)addListenerWithPlaynCorePointer_Listener:(id<PlaynCorePointer_Listener>)listener;
- (id<PlaynCoreConnection>)addListenerWithPlaynCoreMouse_LayerListener:(id<PlaynCoreMouse_LayerListener>)listener;
- (id<PlaynCoreConnection>)addListenerWithPlaynCoreTouch_LayerListener:(id<PlaynCoreTouch_LayerListener>)listener;
- (id<PlaynCoreLayer>)setShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader;
- (float)width;
- (float)height;
- (void)onAdd;
- (void)onRemove;
- (void)setParentWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent;
- (NSString *)description;
- (BOOL)isSetWithPlaynCoreAbstractLayer_FlagEnum:(PlaynCoreAbstractLayer_FlagEnum *)flag;
- (void)setFlagWithPlaynCoreAbstractLayer_FlagEnum:(PlaynCoreAbstractLayer_FlagEnum *)flag
                                          withBOOL:(BOOL)active;
- (void)interactWithIOSClass:(IOSClass *)listenerType
withPlaynCoreAbstractLayer_Interaction:(id<PlaynCoreAbstractLayer_Interaction>)interaction
                      withId:(id)argument;
- (BOOL)hasInteractors;
- (void)interactWithIOSClass:(IOSClass *)type
withPlaynCoreAbstractLayer_Interaction:(id<PlaynCoreAbstractLayer_Interaction>)interaction
withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)current
                      withId:(id)argument;
- (id<PlaynCoreConnection>)addInteractorWithIOSClass:(IOSClass *)listenerType
                                              withId:(id)listener;
- (PlaynCoreAbstractLayer_Interactor *)removeInteractorWithPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)current
                                                       withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)target;
@end

@protocol PlaynCoreAbstractLayer_Interaction < NSObject >
- (void)interactWithId:(id)listener
                withId:(id)argument;
@end

@interface PlaynCoreAbstractLayer_Interactor : NSObject {
 @public
  IOSClass *listenerType_;
  id listener_;
  PlaynCoreAbstractLayer_Interactor *next_;
}

@property (nonatomic, retain) IOSClass *listenerType;
@property (nonatomic, retain) id listener;
@property (nonatomic, retain) PlaynCoreAbstractLayer_Interactor *next;

- (id)initWithIOSClass:(IOSClass *)listenerType
                withId:(id)listener
withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)next;
@end

typedef enum {
  PlaynCoreAbstractLayer_Flag_DESTROYED = 0,
  PlaynCoreAbstractLayer_Flag_VISIBLE = 1,
  PlaynCoreAbstractLayer_Flag_INTERACTIVE = 2,
  PlaynCoreAbstractLayer_Flag_SHOWN = 3,
  PlaynCoreAbstractLayer_Flag_XFDIRTY = 4,
} PlaynCoreAbstractLayer_Flag;

@interface PlaynCoreAbstractLayer_FlagEnum : JavaLangEnum < NSCopying > {
 @public
  int bitmask_;
}
@property (nonatomic, assign) int bitmask;

+ (PlaynCoreAbstractLayer_FlagEnum *)DESTROYED;
+ (PlaynCoreAbstractLayer_FlagEnum *)VISIBLE;
+ (PlaynCoreAbstractLayer_FlagEnum *)INTERACTIVE;
+ (PlaynCoreAbstractLayer_FlagEnum *)SHOWN;
+ (PlaynCoreAbstractLayer_FlagEnum *)XFDIRTY;
+ (IOSObjectArray *)values;
+ (PlaynCoreAbstractLayer_FlagEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithInt:(int)bitmask
     withNSString:(NSString *)name
          withInt:(int)ordinal;
@end

@interface PlaynCoreAbstractLayer_$1 : NSObject < PlaynCoreConnection > {
 @public
  PlaynCoreAbstractLayer *this$0_;
  PlaynCoreAbstractLayer_Interactor *val$newint_;
}

@property (nonatomic, retain) PlaynCoreAbstractLayer *this$0;
@property (nonatomic, retain) PlaynCoreAbstractLayer_Interactor *val$newint;

- (void)disconnect;
- (id)initWithPlaynCoreAbstractLayer:(PlaynCoreAbstractLayer *)outer$
withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)capture$0;
@end
