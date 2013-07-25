//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/flump/Movie.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "playn/core/Asserts.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Json.h"
#include "playn/core/Layer.h"
#include "playn/core/PlayN.h"
#include "playn/core/util/Clock.h"
#include "pythagoras/f/FloatMath.h"
#include "pythagoras/f/IPoint.h"
#include "pythagoras/f/Transform.h"
#include "tripleplay/flump/Instance.h"
#include "tripleplay/flump/KeyframeData.h"
#include "tripleplay/flump/LayerData.h"
#include "tripleplay/flump/Library.h"
#include "tripleplay/flump/Movie.h"
#include "tripleplay/flump/Symbol.h"

@implementation TripleplayFlumpMovie

@synthesize _symbol = _symbol_;
@synthesize _root = _root_;
@synthesize _animators = _animators_;
@synthesize _frame = _frame_;
@synthesize _position = _position_;
@synthesize _speed = _speed_;

- (id)initWithTripleplayFlumpMovie_Symbol:(TripleplayFlumpMovie_Symbol *)symbol {
  if ((self = [super init])) {
    _root_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createGroupLayer];
    _frame_ = 0;
    _position_ = 0;
    _speed_ = 1;
    _symbol_ = symbol;
    _animators_ = [IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(((TripleplayFlumpMovie_Symbol *) nil_chk(symbol)).layers)) size] type:[IOSClass classWithClass:[TripleplayFlumpMovie_LayerAnimator class]]];
    for (int ii = 0, ll = (int) [((IOSObjectArray *) nil_chk(_animators_)) count]; ii < ll; ++ii) {
      TripleplayFlumpMovie_LayerAnimator *animator = [[TripleplayFlumpMovie_LayerAnimator alloc] initWithTripleplayFlumpLayerData:[((id<JavaUtilList>) nil_chk(((TripleplayFlumpMovie_Symbol *) nil_chk(symbol)).layers)) getWithInt:ii]];
      (void) [((IOSObjectArray *) nil_chk(_animators_)) replaceObjectAtIndex:ii withObject:animator];
      [((id<PlaynCoreGroupLayer>) nil_chk(_root_)) addWithPlaynCoreLayer:((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).content];
    }
    [self setFrameWithFloat:1 withFloat:0];
  }
  return self;
}

- (id<PlaynCoreGroupLayer>)layer {
  return _root_;
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  [self paintWithFloat:[((id<PlaynCoreUtilClock>) nil_chk(clock)) dt]];
}

- (void)paintWithFloat:(float)dt {
  dt *= _speed_;
  _position_ += dt;
  if (_position_ > ((TripleplayFlumpMovie_Symbol *) nil_chk(_symbol_)).duration) {
    _position_ = fmodf(_position_, ((TripleplayFlumpMovie_Symbol *) nil_chk(_symbol_)).duration);
  }
  float nextFrame = _position_ * ((TripleplayFlumpMovie_Symbol *) nil_chk(_symbol_))._framesPerMs;
  [self setFrameWithFloat:nextFrame withFloat:dt];
}

- (float)position {
  return _position_;
}

- (void)setPositionWithFloat:(float)position {
  if (position < 0) position = 0;
  _position_ = position;
  [self paintWithFloat:0];
}

- (TripleplayFlumpMovie_Symbol *)symbol {
  return _symbol_;
}

- (float)speed {
  return _speed_;
}

- (void)setSpeedWithFloat:(float)speed {
  _speed_ = speed;
}

- (id<PlaynCoreLayer>)getNamedLayerWithNSString:(NSString *)name {
  TripleplayFlumpMovie_LayerAnimator *animator = [self getNamedAnimatorWithNSString:name];
  return animator != nil ? ((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).content : nil;
}

- (id<JavaUtilList>)getInstancesWithNSString:(NSString *)name {
  TripleplayFlumpMovie_LayerAnimator *animator = [self getNamedAnimatorWithNSString:name];
  if (animator == nil) return [JavaUtilCollections emptyList];
  if (((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator))._instances == nil) return [JavaUtilCollections singletonListWithId:((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator))._current];
  return [JavaUtilCollections unmodifiableListWithJavaUtilList:[JavaUtilArrays asListWithNSObjectArray:((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator))._instances]];
}

- (void)setNamedLayerWithNSString:(NSString *)name
      withTripleplayFlumpInstance:(id<TripleplayFlumpInstance>)instance {
  TripleplayFlumpMovie_LayerAnimator *animator = [self getNamedAnimatorWithNSString:name];
  if (animator != nil) {
    [PlaynCoreAsserts checkStateWithBOOL:[(id) animator.content conformsToProtocol: @protocol(PlaynCoreGroupLayer)] withNSString:@"Layer not a container" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ @"name", name } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
    [animator setCurrentWithTripleplayFlumpInstance:instance];
  }
}

- (id<JavaUtilMap>)namedLayers {
  id<JavaUtilMap> namedLayers = [[JavaUtilHashMap alloc] init];
  {
    IOSObjectArray *a__ = _animators_;
    int n__ = (int) [((IOSObjectArray *) nil_chk(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      TripleplayFlumpMovie_LayerAnimator *animator = [((IOSObjectArray *) nil_chk(a__)) objectAtIndex:i__];
      (void) [((id<JavaUtilMap>) nil_chk(namedLayers)) putWithId:((TripleplayFlumpLayerData *) nil_chk(((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).data)).name withId:((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).content];
    }
  }
  return [JavaUtilCollections unmodifiableMapWithJavaUtilMap:namedLayers];
}

- (TripleplayFlumpMovie_LayerAnimator *)getNamedAnimatorWithNSString:(NSString *)name {
  {
    IOSObjectArray *a__ = _animators_;
    int n__ = (int) [((IOSObjectArray *) nil_chk(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      TripleplayFlumpMovie_LayerAnimator *animator = [((IOSObjectArray *) nil_chk(a__)) objectAtIndex:i__];
      if ([((NSString *) nil_chk(((TripleplayFlumpLayerData *) nil_chk(((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).data)).name)) isEqual:name]) {
        return animator;
      }
    }
  }
  return nil;
}

- (void)setFrameWithFloat:(float)frame
                withFloat:(float)dt {
  if (frame < _frame_) {
    for (int ii = 0, ll = (int) [((IOSObjectArray *) nil_chk(_animators_)) count]; ii < ll; ++ii) {
      TripleplayFlumpMovie_LayerAnimator *animator = [((IOSObjectArray *) nil_chk(_animators_)) objectAtIndex:ii];
      ((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).changedKeyframe = YES;
      ((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)).keyframeIdx = 0;
    }
  }
  for (int ii = 0, ll = (int) [((IOSObjectArray *) nil_chk(_animators_)) count]; ii < ll; ++ii) {
    TripleplayFlumpMovie_LayerAnimator *animator = [((IOSObjectArray *) nil_chk(_animators_)) objectAtIndex:ii];
    [((TripleplayFlumpMovie_LayerAnimator *) nil_chk(animator)) setFrameWithFloat:frame withFloat:dt];
  }
  _frame_ = frame;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayFlumpMovie *typedCopy = (TripleplayFlumpMovie *) copy;
  typedCopy._symbol = _symbol_;
  typedCopy._root = _root_;
  typedCopy._animators = _animators_;
  typedCopy._frame = _frame_;
  typedCopy._position = _position_;
  typedCopy._speed = _speed_;
}

@end
@implementation TripleplayFlumpMovie_Symbol

@synthesize frames = frames_;
@synthesize layers = layers_;
@synthesize duration = duration_;
@synthesize _name = _name_;
@synthesize _framesPerMs = _framesPerMs_;

- (id)initWithTripleplayFlumpLibrary:(TripleplayFlumpLibrary *)lib
            withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json {
  if ((self = [super init])) {
    _name_ = [((id<PlaynCoreJson_Object>) nil_chk(json)) getStringWithNSString:@"id"];
    JavaUtilArrayList *layers = [[JavaUtilArrayList alloc] init];
    self.layers = [JavaUtilCollections unmodifiableListWithJavaUtilList:layers];
    int frames = 0;
    {
      id<JavaUtilIterator> iter__ = [((id<PlaynCoreJson_TypedArray>) nil_chk([((id<PlaynCoreJson_Object>) nil_chk(json)) getArrayWithNSString:@"layers" withIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCoreJson_Object)]])) iterator];
      while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
        id<PlaynCoreJson_Object> layerJson = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
        TripleplayFlumpLayerData *layer = [[TripleplayFlumpLayerData alloc] initWithPlaynCoreJson_Object:layerJson];
        frames = [JavaLangMath maxWithInt:[((TripleplayFlumpLayerData *) nil_chk(layer)) frames] withInt:frames];
        [((JavaUtilArrayList *) nil_chk(layers)) addWithId:layer];
      }
    }
    self.frames = frames;
    _framesPerMs_ = ((TripleplayFlumpLibrary *) nil_chk(lib)).frameRate / 1000;
    self.duration = frames / _framesPerMs_;
  }
  return self;
}

- (NSString *)name {
  return _name_;
}

- (TripleplayFlumpMovie *)createInstance {
  return [[TripleplayFlumpMovie alloc] initWithTripleplayFlumpMovie_Symbol:self];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayFlumpMovie_Symbol *typedCopy = (TripleplayFlumpMovie_Symbol *) copy;
  typedCopy.frames = frames_;
  typedCopy.layers = layers_;
  typedCopy.duration = duration_;
  typedCopy._name = _name_;
  typedCopy._framesPerMs = _framesPerMs_;
}

@end
@implementation TripleplayFlumpMovie_LayerAnimator

@synthesize data = data_;
@synthesize content = content_;
@synthesize keyframeIdx = keyframeIdx_;
@synthesize changedKeyframe = changedKeyframe_;
@synthesize _current = _current_;
@synthesize _instances = _instances_;

- (id)initWithTripleplayFlumpLayerData:(TripleplayFlumpLayerData *)data {
  if ((self = [super init])) {
    keyframeIdx_ = 0;
    changedKeyframe_ = NO;
    self.data = data;
    if (((TripleplayFlumpLayerData *) nil_chk(data))._multipleSymbols) {
      _instances_ = [IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(((TripleplayFlumpLayerData *) nil_chk(data)).keyframes)) size] type:[IOSClass classWithProtocol:@protocol(TripleplayFlumpInstance)]];
      for (int ii = 0, ll = (int) [((IOSObjectArray *) nil_chk(_instances_)) count]; ii < ll; ++ii) {
        (void) [((IOSObjectArray *) nil_chk(_instances_)) replaceObjectAtIndex:ii withObject:[((id<TripleplayFlumpSymbol>) nil_chk([((TripleplayFlumpKeyframeData *) nil_chk([((id<JavaUtilList>) nil_chk(((TripleplayFlumpLayerData *) nil_chk(data)).keyframes)) getWithInt:ii])) symbol])) createInstance]];
      }
      content_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createGroupLayer];
      [self setCurrentWithTripleplayFlumpInstance:[((IOSObjectArray *) nil_chk(_instances_)) objectAtIndex:0]];
    }
    else if (((TripleplayFlumpLayerData *) nil_chk(data))._lastSymbol != nil) {
      _current_ = [((TripleplayFlumpLayerData *) nil_chk(data))._lastSymbol createInstance];
      content_ = [((id<TripleplayFlumpInstance>) nil_chk(_current_)) layer];
    }
    else {
      content_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createGroupLayer];
    }
  }
  return self;
}

- (void)setFrameWithFloat:(float)frame
                withFloat:(float)dt {
  id<JavaUtilList> keyframes = ((TripleplayFlumpLayerData *) nil_chk(data_)).keyframes;
  int finalFrame = [((id<JavaUtilList>) nil_chk(keyframes)) size] - 1;
  while (keyframeIdx_ < finalFrame && ((TripleplayFlumpKeyframeData *) nil_chk([((id<JavaUtilList>) nil_chk(keyframes)) getWithInt:keyframeIdx_ + 1])).index <= frame) {
    ++keyframeIdx_;
    changedKeyframe_ = YES;
  }
  if (changedKeyframe_ && _instances_ != nil) {
    [self setCurrentWithTripleplayFlumpInstance:[((IOSObjectArray *) nil_chk(_instances_)) objectAtIndex:keyframeIdx_]];
    changedKeyframe_ = NO;
  }
  TripleplayFlumpKeyframeData *kf = [((id<JavaUtilList>) nil_chk(keyframes)) getWithInt:keyframeIdx_];
  BOOL visible = [((TripleplayFlumpKeyframeData *) nil_chk(kf)) symbol] != nil && ((TripleplayFlumpKeyframeData *) nil_chk(kf)).visible;
  (void) [((id<PlaynCoreLayer>) nil_chk(content_)) setVisibleWithBOOL:visible];
  if (!visible) {
    return;
  }
  float locX = [((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).loc)) x];
  float locY = [((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).loc)) y];
  float scaleX = [((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).scale_)) x];
  float scaleY = [((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).scale_)) y];
  float skewX = [((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).skew)) x];
  float skewY = [((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).skew)) y];
  float alpha = ((TripleplayFlumpKeyframeData *) nil_chk(kf)).alpha;
  if (((TripleplayFlumpKeyframeData *) nil_chk(kf)).tweened && keyframeIdx_ < finalFrame) {
    float interp = (frame - ((TripleplayFlumpKeyframeData *) nil_chk(kf)).index) / ((TripleplayFlumpKeyframeData *) nil_chk(kf)).duration;
    float ease = ((TripleplayFlumpKeyframeData *) nil_chk(kf)).ease;
    if (ease != 0) {
      float t;
      if (ease < 0) {
        float inv = 1 - interp;
        t = 1 - inv * inv;
        ease = -ease;
      }
      else {
        t = interp * interp;
      }
      interp = ease * t + (1 - ease) * interp;
    }
    TripleplayFlumpKeyframeData *nextKf = [((id<JavaUtilList>) nil_chk(keyframes)) getWithInt:keyframeIdx_ + 1];
    locX += ([((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).loc)) x] - locX) * interp;
    locY += ([((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).loc)) y] - locY) * interp;
    scaleX += ([((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).scale_)) x] - scaleX) * interp;
    scaleY += ([((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).scale_)) y] - scaleY) * interp;
    skewX += ([((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).skew)) x] - skewX) * interp;
    skewY += ([((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).skew)) y] - skewY) * interp;
    alpha += (((TripleplayFlumpKeyframeData *) nil_chk(nextKf)).alpha - alpha) * interp;
  }
  float sinX = [PythagorasFFloatMath sinWithFloat:skewX], cosX = [PythagorasFFloatMath cosWithFloat:skewX];
  float sinY = [PythagorasFFloatMath sinWithFloat:skewY], cosY = [PythagorasFFloatMath cosWithFloat:skewY];
  float m00 = cosY * scaleX;
  float m01 = sinY * scaleX;
  float m10 = -sinX * scaleY;
  float m11 = cosX * scaleY;
  (void) [((id<PythagorasFTransform>) nil_chk([((id<PlaynCoreLayer>) nil_chk(content_)) transform])) setTransformWithFloat:m00 withFloat:m01 withFloat:m10 withFloat:m11 withFloat:locX withFloat:locY];
  (void) [((id<PlaynCoreLayer>) nil_chk(content_)) setOriginWithFloat:[((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).pivot)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(((TripleplayFlumpKeyframeData *) nil_chk(kf)).pivot)) y]];
  (void) [((id<PlaynCoreLayer>) nil_chk(content_)) setAlphaWithFloat:alpha];
  if (_current_ != nil) {
    [_current_ paintWithFloat:dt];
  }
}

- (void)setCurrentWithTripleplayFlumpInstance:(id<TripleplayFlumpInstance>)current {
  if (_current_ != current) {
    _current_ = current;
    id<PlaynCoreGroupLayer> group = (id<PlaynCoreGroupLayer>) content_;
    [((id<PlaynCoreGroupLayer>) nil_chk(group)) clear];
    [((id<PlaynCoreGroupLayer>) nil_chk(group)) addWithPlaynCoreLayer:[((id<TripleplayFlumpInstance>) nil_chk(current)) layer]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayFlumpMovie_LayerAnimator *typedCopy = (TripleplayFlumpMovie_LayerAnimator *) copy;
  typedCopy.data = data_;
  typedCopy.content = content_;
  typedCopy.keyframeIdx = keyframeIdx_;
  typedCopy.changedKeyframe = changedKeyframe_;
  typedCopy._current = _current_;
  typedCopy._instances = _instances_;
}

@end
