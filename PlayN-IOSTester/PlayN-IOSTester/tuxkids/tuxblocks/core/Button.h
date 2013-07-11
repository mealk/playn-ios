//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/Button.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangThrowable;
@class TuxkidsTuxblocksCoreImageLayerTintable;
@protocol PlaynCoreImage;
@protocol PlaynCoreLayer;
@protocol PlaynCorePointer_Event;
@protocol TuxkidsTuxblocksCoreButton_OnDragListener;
@protocol TuxkidsTuxblocksCoreButton_OnPressedListener;
@protocol TuxkidsTuxblocksCoreButton_OnReleasedListener;

#import "JreEmulation.h"
#import "playn/core/Pointer.h"
#import "playn/core/util/Callback.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/utils/Positioned.h"

#define TuxkidsTuxblocksCoreButton_UNPRESSED_ALPHA 0.5

@interface TuxkidsTuxblocksCoreButton : TuxkidsTuxblocksCorePlayNObject < TuxkidsTuxblocksCoreUtilsPositioned > {
 @public
  TuxkidsTuxblocksCoreImageLayerTintable *imageLayer__;
  id<TuxkidsTuxblocksCoreButton_OnPressedListener> onPressedListener_;
  id<TuxkidsTuxblocksCoreButton_OnReleasedListener> onReleaseListener_;
  id<TuxkidsTuxblocksCoreButton_OnDragListener> onDragListener_;
  float width__, height__;
  BOOL pressed__;
  BOOL isCircle__;
  int tint__, tintPressed_;
  BOOL enabled__;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreImageLayerTintable *imageLayer_;
@property (nonatomic, strong) id<TuxkidsTuxblocksCoreButton_OnPressedListener> onPressedListener;
@property (nonatomic, strong) id<TuxkidsTuxblocksCoreButton_OnReleasedListener> onReleaseListener;
@property (nonatomic, strong) id<TuxkidsTuxblocksCoreButton_OnDragListener> onDragListener;
@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;
@property (nonatomic, assign) BOOL pressed_;
@property (nonatomic, assign) BOOL isCircle_;
@property (nonatomic, assign) int tint_;
@property (nonatomic, assign) int tintPressed;
@property (nonatomic, assign) BOOL enabled_;

+ (float)UNPRESSED_ALPHA;
- (id<PlaynCoreLayer>)layerAddable;
- (TuxkidsTuxblocksCoreImageLayerTintable *)imageLayer;
- (id<PlaynCoreImage>)image;
- (float)x;
- (float)y;
- (float)width;
- (float)height;
- (BOOL)isCircle;
- (BOOL)pressed;
- (int)tint;
- (BOOL)enabled;
- (float)left;
- (float)top;
- (float)right;
- (float)bottom;
- (void)setLeftWithFloat:(float)left;
- (void)setTopWithFloat:(float)top;
- (void)setRightWithFloat:(float)right;
- (void)setBottomWithFloat:(float)bottom;
- (void)setXWithFloat:(float)x;
- (void)setYWithFloat:(float)y;
- (void)setPositionWithFloat:(float)x
                   withFloat:(float)y;
- (void)setSizeWithFloat:(float)width
               withFloat:(float)height;
- (void)setImageWithPlaynCoreImage:(id<PlaynCoreImage>)image;
- (void)setIsCircleWithBOOL:(BOOL)isCircle;
- (void)setOnPressListenerWithTuxkidsTuxblocksCoreButton_OnPressedListener:(id<TuxkidsTuxblocksCoreButton_OnPressedListener>)onPressedListener;
- (void)setOnReleasedListenerWithTuxkidsTuxblocksCoreButton_OnReleasedListener:(id<TuxkidsTuxblocksCoreButton_OnReleasedListener>)onReleasedListener;
- (void)setOnDragListenerWithTuxkidsTuxblocksCoreButton_OnDragListener:(id<TuxkidsTuxblocksCoreButton_OnDragListener>)onDragListener;
- (void)setTintWithInt:(int)tint;
- (void)setTintWithInt:(int)tint
             withFloat:(float)alphaUnpressed;
- (void)setTintWithInt:(int)tint
               withInt:(int)tintPressed;
- (void)setEnabledWithBOOL:(BOOL)enabled;
- (id)initWithNSString:(NSString *)imagePath
             withFloat:(float)width
             withFloat:(float)height
              withBOOL:(BOOL)isCircle;
- (void)refreshTint;
- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image
                   withFloat:(float)width
                   withFloat:(float)height
                    withBOOL:(BOOL)isCircle;
- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image
                    withBOOL:(BOOL)isCircle;
- (void)destroy;
- (BOOL)hitWithFloat:(float)x
           withFloat:(float)y;
- (BOOL)hitRectangleWithFloat:(float)x
                    withFloat:(float)y;
- (BOOL)hitCircleWithFloat:(float)x
                 withFloat:(float)y;
- (void)adjustScale;
@end

@interface TuxkidsTuxblocksCoreButton_PointerListener : NSObject < PlaynCorePointer_Listener > {
 @public
  TuxkidsTuxblocksCoreButton *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreButton *this$0;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (BOOL)insideLocalWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (id)initWithTuxkidsTuxblocksCoreButton:(TuxkidsTuxblocksCoreButton *)outer$;
@end

@protocol TuxkidsTuxblocksCoreButton_OnReleasedListener < NSObject >
- (void)onReleaseWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                   withBOOL:(BOOL)inButton;
@end

@protocol TuxkidsTuxblocksCoreButton_OnPressedListener < NSObject >
- (void)onPressWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
@end

@protocol TuxkidsTuxblocksCoreButton_OnDragListener < NSObject >
- (void)onDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
@end

@interface TuxkidsTuxblocksCoreButton_$1 : NSObject < PlaynCoreUtilCallback > {
 @public
  TuxkidsTuxblocksCoreButton *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreButton *this$0;

- (void)onSuccessWithId:(id<PlaynCoreImage>)result;
- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithTuxkidsTuxblocksCoreButton:(TuxkidsTuxblocksCoreButton *)outer$;
@end
