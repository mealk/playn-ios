//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Slider.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "playn/core/Canvas.h"
#include "playn/core/CanvasImage.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/Layer.h"
#include "playn/core/PlayN.h"
#include "playn/core/Pointer.h"
#include "pythagoras/f/Dimension.h"
#include "pythagoras/f/IPoint.h"
#include "react/Connection.h"
#include "react/Signal.h"
#include "react/SignalView.h"
#include "react/UnitSlot.h"
#include "react/Value.h"
#include "tripleplay/ui/Background.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/Slider.h"
#include "tripleplay/ui/Style.h"
#include "tripleplay/ui/Widget.h"

@implementation TripleplayUiSlider

static TripleplayUiStyle * TripleplayUiSlider_BAR_WIDTH_;
static TripleplayUiStyle * TripleplayUiSlider_BAR_HEIGHT_;
static TripleplayUiStyle * TripleplayUiSlider_BAR_BACKGROUND_;
static TripleplayUiStyle * TripleplayUiSlider_THUMB_IMAGE_;
static TripleplayUiStyle * TripleplayUiSlider_THUMB_ORIGIN_;

@synthesize value = value_;
@synthesize range = range_;
@synthesize _clicked = _clicked_;
@synthesize _thumb = _thumb_;
@synthesize _barInst = _barInst_;
@synthesize _thumbLeft = _thumbLeft_;
@synthesize _thumbRange = _thumbRange_;
@synthesize _thumbY = _thumbY_;
@synthesize _increment = _increment_;

+ (TripleplayUiStyle *)BAR_WIDTH {
  return TripleplayUiSlider_BAR_WIDTH_;
}

+ (void)setBAR_WIDTH:(TripleplayUiStyle *)BAR_WIDTH {
  TripleplayUiSlider_BAR_WIDTH_ = BAR_WIDTH;
}

+ (TripleplayUiStyle *)BAR_HEIGHT {
  return TripleplayUiSlider_BAR_HEIGHT_;
}

+ (void)setBAR_HEIGHT:(TripleplayUiStyle *)BAR_HEIGHT {
  TripleplayUiSlider_BAR_HEIGHT_ = BAR_HEIGHT;
}

+ (TripleplayUiStyle *)BAR_BACKGROUND {
  return TripleplayUiSlider_BAR_BACKGROUND_;
}

+ (void)setBAR_BACKGROUND:(TripleplayUiStyle *)BAR_BACKGROUND {
  TripleplayUiSlider_BAR_BACKGROUND_ = BAR_BACKGROUND;
}

+ (TripleplayUiStyle *)THUMB_IMAGE {
  return TripleplayUiSlider_THUMB_IMAGE_;
}

+ (void)setTHUMB_IMAGE:(TripleplayUiStyle *)THUMB_IMAGE {
  TripleplayUiSlider_THUMB_IMAGE_ = THUMB_IMAGE;
}

+ (TripleplayUiStyle *)THUMB_ORIGIN {
  return TripleplayUiSlider_THUMB_ORIGIN_;
}

+ (void)setTHUMB_ORIGIN:(TripleplayUiStyle *)THUMB_ORIGIN {
  TripleplayUiSlider_THUMB_ORIGIN_ = THUMB_ORIGIN;
}

- (id)init {
  return [self initTripleplayUiSliderWithFloat:0 withFloat:0 withFloat:0];
}

- (id)initTripleplayUiSliderWithFloat:(float)value
                            withFloat:(float)min
                            withFloat:(float)max {
  if ((self = [super init])) {
    _clicked_ = [ReactSignal create];
    [self enableInteraction];
    self.value = [ReactValue createWithId:[JavaLangFloat valueOfWithFloat:value]];
    range_ = [ReactValue createWithId:[[TripleplayUiSlider_Range alloc] initWithFloat:min withFloat:max]];
    [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) addWithPlaynCoreLayer:_thumb_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImageLayer]];
    (void) [((id<PlaynCoreImageLayer>) nil_chk(_thumb_)) setDepthWithFloat:1];
    ReactUnitSlot *updateThumb = [[TripleplayUiSlider_$1 alloc] initWithTripleplayUiSlider:self];
    (void) [((ReactValue *) nil_chk(self.value)) connectWithReactValueView_Listener:updateThumb];
    (void) [((ReactValue *) nil_chk(range_)) connectWithReactValueView_Listener:updateThumb];
  }
  return self;
}

- (id)initWithFloat:(float)value
          withFloat:(float)min
          withFloat:(float)max {
  return [self initTripleplayUiSliderWithFloat:value withFloat:min withFloat:max];
}

- (TripleplayUiSlider *)setIncrementWithFloat:(float)increment {
  _increment_ = [JavaLangFloat valueOfWithFloat:increment];
  return self;
}

- (JavaLangFloat *)increment {
  return _increment_;
}

- (id<ReactSignalView>)clicked {
  return _clicked_;
}

- (float)max {
  return ((TripleplayUiSlider_Range *) nil_chk([((ReactValue *) nil_chk(range_)) get])).max;
}

- (float)min {
  return ((TripleplayUiSlider_Range *) nil_chk([((ReactValue *) nil_chk(range_)) get])).min;
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiSlider class]];
}

- (void)wasRemoved {
  [super wasRemoved];
  if (_barInst_ != nil) {
    [_barInst_ destroy];
    _barInst_ = nil;
  }
}

- (TripleplayUiElement_LayoutData *)createLayoutDataWithFloat:(float)hintX
                                                    withFloat:(float)hintY {
  return [[TripleplayUiSlider_SliderLayoutData alloc] initWithTripleplayUiSlider:self];
}

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                       withFloat:(float)x
                                       withFloat:(float)y {
  [super onPointerStartWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  [self handlePointerWithFloat:x withFloat:y];
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                      withFloat:(float)x
                                      withFloat:(float)y {
  [super onPointerDragWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  [self handlePointerWithFloat:x withFloat:y];
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                     withFloat:(float)x
                                     withFloat:(float)y {
  [super onPointerEndWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  [self handlePointerWithFloat:x withFloat:y];
  [((ReactSignal *) nil_chk(_clicked_)) emitWithId:self];
}

- (void)updateThumb {
  TripleplayUiSlider_Range *r = [((ReactValue *) nil_chk(range_)) get];
  float thumbPct = ([((JavaLangFloat *) nil_chk([((ReactValue *) nil_chk(value_)) get])) floatValue] - ((TripleplayUiSlider_Range *) nil_chk(r)).min) / ((TripleplayUiSlider_Range *) nil_chk(r)).range;
  (void) [((id<PlaynCoreImageLayer>) nil_chk(_thumb_)) setTranslationWithFloat:_thumbLeft_ + _thumbRange_ * thumbPct withFloat:_thumbY_];
}

- (void)handlePointerWithFloat:(float)x
                     withFloat:(float)y {
  TripleplayUiSlider_Range *r = [((ReactValue *) nil_chk(range_)) get];
  float width = _thumbRange_;
  x = [JavaLangMath minWithFloat:width withFloat:x - _thumbLeft_];
  float pos = [JavaLangMath maxWithFloat:x withFloat:0] / width * ((TripleplayUiSlider_Range *) nil_chk(r)).range;
  if (_increment_ != nil) {
    float i = [_increment_ floatValue];
    pos = i * [JavaLangMath roundWithFloat:pos / i];
  }
  (void) [((ReactValue *) nil_chk(value_)) updateWithId:[JavaLangFloat valueOfWithFloat:((TripleplayUiSlider_Range *) nil_chk(r)).min + pos]];
}

+ (id<PlaynCoreImage>)createDefaultThumbImage {
  float size = 24;
  id<PlaynCoreCanvasImage> image = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImageWithFloat:size withFloat:size];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) setFillColorWithInt:(int) 0xFF000000];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) fillCircleWithFloat:size / 2 withFloat:size / 2 withFloat:size / 2 - 1];
  return image;
}

+ (void)initialize {
  if (self == [TripleplayUiSlider class]) {
    TripleplayUiSlider_BAR_WIDTH_ = [TripleplayUiStyle newStyleWithBOOL:YES withId:[JavaLangFloat valueOfWithFloat:100.0f]];
    TripleplayUiSlider_BAR_HEIGHT_ = [TripleplayUiStyle newStyleWithBOOL:YES withId:[JavaLangFloat valueOfWithFloat:5.0f]];
    TripleplayUiSlider_BAR_BACKGROUND_ = [TripleplayUiStyle newStyleWithBOOL:YES withId:[TripleplayUiBackground solidWithInt:(int) 0xFF000000]];
    TripleplayUiSlider_THUMB_IMAGE_ = [TripleplayUiStyle newStyleWithBOOL:YES withId:[TripleplayUiSlider createDefaultThumbImage]];
    TripleplayUiSlider_THUMB_ORIGIN_ = [TripleplayUiStyle newStyleWithBOOL:NO withId:(id<PythagorasFIPoint>) nil];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiSlider *typedCopy = (TripleplayUiSlider *) copy;
  typedCopy.value = value_;
  typedCopy.range = range_;
  typedCopy._clicked = _clicked_;
  typedCopy._thumb = _thumb_;
  typedCopy._barInst = _barInst_;
  typedCopy._thumbLeft = _thumbLeft_;
  typedCopy._thumbRange = _thumbRange_;
  typedCopy._thumbY = _thumbY_;
  typedCopy._increment = _increment_;
}

@end
@implementation TripleplayUiSlider_Range

@synthesize min = min_;
@synthesize max = max_;
@synthesize range = range_;

- (id)initWithFloat:(float)min
          withFloat:(float)max {
  if ((self = [super init])) {
    if (min > max) @throw [[JavaLangIllegalArgumentException alloc] init];
    self.min = min;
    self.max = max;
    self.range = max - min;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiSlider_Range *typedCopy = (TripleplayUiSlider_Range *) copy;
  typedCopy.min = min_;
  typedCopy.max = max_;
  typedCopy.range = range_;
}

@end
@implementation TripleplayUiSlider_SliderLayoutData

@synthesize this$2 = this$2_;
@synthesize barWidth = barWidth_;
@synthesize barHeight = barHeight_;
@synthesize barBG = barBG_;
@synthesize thumbImage = thumbImage_;
@synthesize thumbOrigin = thumbOrigin_;

- (PythagorasFDimension *)computeSizeWithFloat:(float)hintX
                                     withFloat:(float)hintY {
  return [[PythagorasFDimension alloc] initWithFloat:barWidth_ + [((id<PlaynCoreImage>) nil_chk(thumbImage_)) width] withFloat:[JavaLangMath maxWithFloat:barHeight_ withFloat:[((id<PlaynCoreImage>) nil_chk(thumbImage_)) height]]];
}

- (void)layoutWithFloat:(float)left
              withFloat:(float)top
              withFloat:(float)width
              withFloat:(float)height {
  float thumbWidth = [((id<PlaynCoreImage>) nil_chk(thumbImage_)) width], thumbHeight = [((id<PlaynCoreImage>) nil_chk(thumbImage_)) height];
  this$2_._thumbRange = width - thumbWidth;
  this$2_._thumbLeft = left + thumbWidth / 2;
  this$2_._thumbY = top + height / 2;
  (void) [((id<PlaynCoreImageLayer>) nil_chk(this$2_._thumb)) setImageWithPlaynCoreImage:thumbImage_];
  if (thumbOrigin_ == nil) {
    (void) [((id<PlaynCoreImageLayer>) nil_chk(this$2_._thumb)) setOriginWithFloat:thumbWidth / 2 withFloat:thumbHeight / 2];
  }
  else {
    (void) [((id<PlaynCoreImageLayer>) nil_chk(this$2_._thumb)) setOriginWithFloat:[thumbOrigin_ x] withFloat:[thumbOrigin_ y]];
  }
  if (this$2_._barInst != nil) [this$2_._barInst destroy];
  if (width > 0 && height > 0) {
    this$2_._barInst = [((TripleplayUiBackground *) nil_chk(barBG_)) instantiateWithPythagorasFIDimension:[[PythagorasFDimension alloc] initWithFloat:width - thumbWidth withFloat:barHeight_]];
    [((TripleplayUiBackground_Instance *) nil_chk(this$2_._barInst)) addToWithPlaynCoreGroupLayer:this$2_.layer withFloat:this$2_._thumbLeft withFloat:top + (height - barHeight_) / 2 withFloat:1];
  }
  [this$2_ updateThumb];
}

- (id)initWithTripleplayUiSlider:(TripleplayUiSlider *)outer$ {
  if ((self = [super initWithTripleplayUiElement:outer$])) {
    this$2_ = outer$;
    barWidth_ = [((JavaLangFloat *) nil_chk([outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiSlider BAR_WIDTH]])) floatValue];
    barHeight_ = [((JavaLangFloat *) nil_chk([outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiSlider BAR_HEIGHT]])) floatValue];
    barBG_ = [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiSlider BAR_BACKGROUND]];
    thumbImage_ = [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiSlider THUMB_IMAGE]];
    thumbOrigin_ = [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiSlider THUMB_ORIGIN]];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiSlider_SliderLayoutData *typedCopy = (TripleplayUiSlider_SliderLayoutData *) copy;
  typedCopy.this$2 = this$2_;
  typedCopy.barWidth = barWidth_;
  typedCopy.barHeight = barHeight_;
  typedCopy.barBG = barBG_;
  typedCopy.thumbImage = thumbImage_;
  typedCopy.thumbOrigin = thumbOrigin_;
}

@end
@implementation TripleplayUiSlider_$1

@synthesize this$0 = this$0_;

- (void)onEmit {
  [this$0_ updateThumb];
}

- (id)initWithTripleplayUiSlider:(TripleplayUiSlider *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiSlider_$1 *typedCopy = (TripleplayUiSlider_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
