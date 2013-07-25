//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Scroller.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiScroller_RESTRICT
#define TripleplayUiScroller_INCLUDE_ALL 1
#endif
#undef TripleplayUiScroller_RESTRICT
#if TripleplayUiScroller_$3_INCLUDE
#define TripleplayUiScroller_Clippable_INCLUDE 1
#endif
#if TripleplayUiScroller_$1_INCLUDE
#define TripleplayUiScroller_BarRenderer_INCLUDE 1
#endif

#if !defined (_TripleplayUiScroller_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_INCLUDE)
#define _TripleplayUiScroller_

@class IOSClass;
@class PythagorasFDimension;
@class PythagorasFPoint;
@class ReactSignal;
@class TripleplayUiElement;
@class TripleplayUiElement_LayoutData;
@class TripleplayUiGroup;
@class TripleplayUiScroller_Bar;
@class TripleplayUiScroller_BehaviorEnum;
@class TripleplayUiStyle;
@class TripleplayUiUtilXYFlicker;
@protocol JavaUtilList;
@protocol PlaynCoreLayer;
@protocol PythagorasFIDimension;
@protocol TripleplayUiInterface_TaskHandle;
@protocol TripleplayUiScroller_BarRenderer;
@protocol TripleplayUiScroller_Clippable;
@protocol TripleplayUiScroller_Listener;

#define TripleplayUiElements_RESTRICT 1
#define TripleplayUiElements_INCLUDE 1
#include "tripleplay/ui/Elements.h"

#define TripleplayUiScroller_BAR_FADE_SPEED 0.0015
#define TripleplayUiScroller_BAR_TOP_ALPHA 3.0

@interface TripleplayUiScroller : TripleplayUiElements {
 @public
  TripleplayUiElement *content_;
  TripleplayUiScroller_Bar *hbar_, *vbar_;
  TripleplayUiGroup *_scroller_;
  TripleplayUiUtilXYFlicker *_flicker_;
  id<TripleplayUiScroller_Clippable> _clippable_;
  PythagorasFDimension *_contentSize_;
  id<TripleplayUiInterface_TaskHandle> _updater_;
  id<PlaynCoreLayer> _barLayer_;
  PythagorasFPoint *_queuedScroll_;
  float _barAlpha_;
  id<TripleplayUiScroller_BarRenderer> _barRenderer_;
  id<JavaUtilList> _lners_;
}

@property (nonatomic, strong) TripleplayUiElement *content;
@property (nonatomic, strong) TripleplayUiScroller_Bar *hbar;
@property (nonatomic, strong) TripleplayUiScroller_Bar *vbar;
@property (nonatomic, strong) TripleplayUiGroup *_scroller;
@property (nonatomic, strong) TripleplayUiUtilXYFlicker *_flicker;
@property (nonatomic, strong) id<TripleplayUiScroller_Clippable> _clippable;
@property (nonatomic, strong) PythagorasFDimension *_contentSize;
@property (nonatomic, strong) id<TripleplayUiInterface_TaskHandle> _updater;
@property (nonatomic, strong) id<PlaynCoreLayer> _barLayer;
@property (nonatomic, strong) PythagorasFPoint *_queuedScroll;
@property (nonatomic, assign) float _barAlpha;
@property (nonatomic, strong) id<TripleplayUiScroller_BarRenderer> _barRenderer;
@property (nonatomic, strong) id<JavaUtilList> _lners;

+ (TripleplayUiStyle *)BAR_SIZE;
+ (TripleplayUiStyle *)BAR_COLOR;
+ (TripleplayUiStyle *)BAR_RENDERER;
+ (float)BAR_FADE_SPEED;
+ (float)BAR_TOP_ALPHA;
+ (TripleplayUiScroller *)findScrollParentWithTripleplayUiElement:(TripleplayUiElement *)elem;
+ (BOOL)makeVisibleWithTripleplayUiElement:(TripleplayUiElement *)elem;
- (id)initWithTripleplayUiElement:(TripleplayUiElement *)content;
- (TripleplayUiScroller *)setBehaviorWithTripleplayUiScroller_BehaviorEnum:(TripleplayUiScroller_BehaviorEnum *)beh;
- (void)addListenerWithTripleplayUiScroller_Listener:(id<TripleplayUiScroller_Listener>)lner;
- (void)removeListenerWithTripleplayUiScroller_Listener:(id<TripleplayUiScroller_Listener>)lner;
- (float)xpos;
- (float)ypos;
- (void)scrollXWithFloat:(float)x;
- (void)scrollYWithFloat:(float)y;
- (void)scrollWithFloat:(float)x
              withFloat:(float)y;
- (void)queueScrollWithFloat:(float)x
                   withFloat:(float)y;
- (id<PythagorasFIDimension>)contentSize;
- (id<PythagorasFIDimension>)viewSize;
- (ReactSignal *)contentClicked;
- (TripleplayUiScroller *)addWithTripleplayUiElementArray:(IOSObjectArray *)children;
- (TripleplayUiScroller *)addWithInt:(int)index
             withTripleplayUiElement:(TripleplayUiElement *)child;
- (void)updateWithInt:(int)delta;
- (void)updateWithBOOL:(BOOL)force;
- (TripleplayUiScroller_Bar *)createBar;
- (TripleplayUiElement_LayoutData *)createLayoutDataWithFloat:(float)hintX
                                                    withFloat:(float)hintY;
- (IOSClass *)getStyleClass;
- (void)wasAdded;
- (void)wasRemoved;
- (void)updateVisibility;
- (void)fireViewChanged;
- (void)firePositionChange;
- (void)setBarAlphaWithFloat:(float)alpha;
@end
#endif

#if !defined (_TripleplayUiScroller_Listener_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_Listener_INCLUDE)
#define _TripleplayUiScroller_Listener_

@protocol PythagorasFIDimension;

@protocol TripleplayUiScroller_Listener < NSObject, JavaObject >
- (void)viewChangedWithPythagorasFIDimension:(id<PythagorasFIDimension>)contentSize
                   withPythagorasFIDimension:(id<PythagorasFIDimension>)scrollSize;
- (void)positionChangedWithFloat:(float)xpos
                       withFloat:(float)ypos;
@end
#endif

#if !defined (_TripleplayUiScroller_BehaviorEnum_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_BehaviorEnum_INCLUDE)
#define _TripleplayUiScroller_BehaviorEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef enum {
  TripleplayUiScroller_Behavior_HORIZONTAL = 0,
  TripleplayUiScroller_Behavior_VERTICAL = 1,
  TripleplayUiScroller_Behavior_BOTH = 2,
} TripleplayUiScroller_Behavior;

@interface TripleplayUiScroller_BehaviorEnum : JavaLangEnum < NSCopying > {
}
+ (TripleplayUiScroller_BehaviorEnum *)HORIZONTAL;
+ (TripleplayUiScroller_BehaviorEnum *)VERTICAL;
+ (TripleplayUiScroller_BehaviorEnum *)BOTH;
+ (IOSObjectArray *)values;
+ (TripleplayUiScroller_BehaviorEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (BOOL)hasHorizontal;
- (BOOL)hasVertical;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
#endif

#if !defined (_TripleplayUiScroller_Bar_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_Bar_INCLUDE)
#define _TripleplayUiScroller_Bar_

@interface TripleplayUiScroller_Bar : NSObject {
 @public
  BOOL _on_;
  float _size_;
  float _csize_;
  float _pos_;
  float _cpos_;
  float _extent_;
  float _max_;
}

@property (nonatomic, assign) BOOL _on;
@property (nonatomic, assign) float _size;
@property (nonatomic, assign) float _csize;
@property (nonatomic, assign) float _pos;
@property (nonatomic, assign) float _cpos;
@property (nonatomic, assign) float _extent;
@property (nonatomic, assign) float _max;

- (float)max;
- (BOOL)active;
- (float)setRangeWithFloat:(float)viewSize
                 withFloat:(float)contentSize;
- (BOOL)setWithFloat:(float)cpos;
- (float)getContentSize;
- (float)extendHintWithFloat:(float)hint;
- (id)init;
@end
#endif

#if !defined (_TripleplayUiScroller_BarsLayoutData_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_BarsLayoutData_INCLUDE)
#define _TripleplayUiScroller_BarsLayoutData_

@class TripleplayUiScroller;
@protocol TripleplayUiScroller_BarRenderer;

#define TripleplayUiElements_RESTRICT 1
#define TripleplayUiElements_ElementsLayoutData_INCLUDE 1
#include "tripleplay/ui/Elements.h"

@interface TripleplayUiScroller_BarsLayoutData : TripleplayUiElements_ElementsLayoutData {
 @public
  TripleplayUiScroller *this$3_;
  int barColor_;
  float barSize_;
  id<TripleplayUiScroller_BarRenderer> barRenderer_;
}

@property (nonatomic, strong) TripleplayUiScroller *this$3;
@property (nonatomic, assign) int barColor;
@property (nonatomic, assign) float barSize;
@property (nonatomic, strong) id<TripleplayUiScroller_BarRenderer> barRenderer;

- (void)layoutWithFloat:(float)left
              withFloat:(float)top
              withFloat:(float)width
              withFloat:(float)height;
- (id)initWithTripleplayUiScroller:(TripleplayUiScroller *)outer$;
@end
#endif

#if !defined (_TripleplayUiScroller_BarsLayoutData_$1_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_BarsLayoutData_$1_INCLUDE)
#define _TripleplayUiScroller_BarsLayoutData_$1_

@class PythagorasFRectangle;
@class TripleplayUiScroller_BarsLayoutData;
@protocol PlaynCoreSurface;

#define PlaynCoreImmediateLayer_RESTRICT 1
#define PlaynCoreImmediateLayer_Renderer_INCLUDE 1
#include "playn/core/ImmediateLayer.h"

@interface TripleplayUiScroller_BarsLayoutData_$1 : NSObject < PlaynCoreImmediateLayer_Renderer > {
 @public
  TripleplayUiScroller_BarsLayoutData *this$0_;
  PythagorasFRectangle *area_;
  float val$height_;
  float val$width_;
}

@property (nonatomic, strong) TripleplayUiScroller_BarsLayoutData *this$0;
@property (nonatomic, strong) PythagorasFRectangle *area;
@property (nonatomic, assign) float val$height;
@property (nonatomic, assign) float val$width;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surface;
- (id)initWithTripleplayUiScroller_BarsLayoutData:(TripleplayUiScroller_BarsLayoutData *)outer$
                                        withFloat:(float)capture$0
                                        withFloat:(float)capture$1;
@end
#endif

#if !defined (_TripleplayUiScroller_ScrollLayout_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_ScrollLayout_INCLUDE)
#define _TripleplayUiScroller_ScrollLayout_

@class PythagorasFDimension;
@class TripleplayUiElements;
@class TripleplayUiScroller;

#define TripleplayUiLayout_RESTRICT 1
#define TripleplayUiLayout_INCLUDE 1
#include "tripleplay/ui/Layout.h"

@interface TripleplayUiScroller_ScrollLayout : TripleplayUiLayout {
 @public
  TripleplayUiScroller *this$0_;
}

@property (nonatomic, strong) TripleplayUiScroller *this$0;

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY;
- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height;
- (id)initWithTripleplayUiScroller:(TripleplayUiScroller *)outer$;
@end
#endif

#if !defined (_TripleplayUiScroller_BarRenderer_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_BarRenderer_INCLUDE)
#define _TripleplayUiScroller_BarRenderer_

@class PythagorasFRectangle;
@protocol PlaynCoreSurface;

@protocol TripleplayUiScroller_BarRenderer < NSObject, JavaObject >
- (void)drawBarWithPlaynCoreSurface:(id<PlaynCoreSurface>)surface
           withPythagorasFRectangle:(PythagorasFRectangle *)area;
@end
#endif

#if !defined (_TripleplayUiScroller_$1_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_$1_INCLUDE)
#define _TripleplayUiScroller_$1_

@class PythagorasFRectangle;
@protocol PlaynCoreSurface;

@interface TripleplayUiScroller_$1 : NSObject < TripleplayUiScroller_BarRenderer > {
}

- (void)drawBarWithPlaynCoreSurface:(id<PlaynCoreSurface>)surface
           withPythagorasFRectangle:(PythagorasFRectangle *)area;
- (id)init;
@end
#endif

#if !defined (_TripleplayUiScroller_$2_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_$2_INCLUDE)
#define _TripleplayUiScroller_$2_

@class TripleplayUiElement;

#define JavaLangRunnable_RESTRICT 1
#define JavaLangRunnable_INCLUDE 1
#include "java/lang/Runnable.h"

@interface TripleplayUiScroller_$2 : NSObject < JavaLangRunnable > {
 @public
  TripleplayUiElement *val$elem_;
}

@property (nonatomic, strong) TripleplayUiElement *val$elem;

- (void)run;
- (id)initWithTripleplayUiElement:(TripleplayUiElement *)capture$0;
@end
#endif

#if !defined (_TripleplayUiScroller_Clippable_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_Clippable_INCLUDE)
#define _TripleplayUiScroller_Clippable_

@protocol TripleplayUiScroller_Clippable < NSObject, JavaObject >
- (void)setViewAreaWithFloat:(float)width
                   withFloat:(float)height;
- (void)setPositionWithFloat:(float)x
                   withFloat:(float)y;
@end
#endif

#if !defined (_TripleplayUiScroller_$3_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_$3_INCLUDE)
#define _TripleplayUiScroller_$3_

@class TripleplayUiScroller;

@interface TripleplayUiScroller_$3 : NSObject < TripleplayUiScroller_Clippable > {
 @public
  TripleplayUiScroller *this$0_;
}

@property (nonatomic, strong) TripleplayUiScroller *this$0;

- (void)setViewAreaWithFloat:(float)width
                   withFloat:(float)height;
- (void)setPositionWithFloat:(float)x
                   withFloat:(float)y;
- (id)initWithTripleplayUiScroller:(TripleplayUiScroller *)outer$;
@end
#endif

#if !defined (_TripleplayUiScroller_$4_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_$4_INCLUDE)
#define _TripleplayUiScroller_$4_

@class TripleplayUiScroller;
@protocol PlaynCoreMouse_WheelEvent;

#define PlaynCoreMouse_RESTRICT 1
#define PlaynCoreMouse_LayerAdapter_INCLUDE 1
#include "playn/core/Mouse.h"

@interface TripleplayUiScroller_$4 : PlaynCoreMouse_LayerAdapter {
 @public
  TripleplayUiScroller *this$0_;
}

@property (nonatomic, strong) TripleplayUiScroller *this$0;

- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event;
- (id)initWithTripleplayUiScroller:(TripleplayUiScroller *)outer$;
@end
#endif

#if !defined (_TripleplayUiScroller_$5_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_$5_INCLUDE)
#define _TripleplayUiScroller_$5_

@class TripleplayUiScroller;

#define TripleplayUiInterface_RESTRICT 1
#define TripleplayUiInterface_Task_INCLUDE 1
#include "tripleplay/ui/Interface.h"

@interface TripleplayUiScroller_$5 : NSObject < TripleplayUiInterface_Task > {
 @public
  TripleplayUiScroller *this$0_;
}

@property (nonatomic, strong) TripleplayUiScroller *this$0;

- (void)updateWithInt:(int)delta;
- (id)initWithTripleplayUiScroller:(TripleplayUiScroller *)outer$;
@end
#endif

#if !defined (_TripleplayUiScroller_$6_) && (TripleplayUiScroller_INCLUDE_ALL || TripleplayUiScroller_$6_INCLUDE)
#define _TripleplayUiScroller_$6_

@class TripleplayUiScroller_ScrollLayout;
@protocol PlaynCoreGroupLayer;

#define TripleplayUiGroup_RESTRICT 1
#define TripleplayUiGroup_INCLUDE 1
#include "tripleplay/ui/Group.h"

@interface TripleplayUiScroller_$6 : TripleplayUiGroup {
}

- (id<PlaynCoreGroupLayer>)createLayer;
- (id)initWithTripleplayUiScroller_ScrollLayout:(TripleplayUiScroller_ScrollLayout *)arg$0;
@end
#endif
