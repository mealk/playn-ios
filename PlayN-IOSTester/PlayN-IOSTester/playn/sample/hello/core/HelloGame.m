//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/sample/hello/core/HelloGame.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "playn/core/Assets.h"
#include "playn/core/Game.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/PlayN.h"
#include "playn/core/Pointer.h"
#include "playn/sample/hello/core/HelloGame.h"
#include "playn/sample/hello/core/Pea.h"

@implementation PlaynSampleHelloCoreHelloGame

@synthesize peaLayer = peaLayer_;
@synthesize peas = peas_;

+ (int)UPDATE_RATE {
  return PlaynSampleHelloCoreHelloGame_UPDATE_RATE;
}

- (id)init {
  if ((self = [super initWithInt:PlaynSampleHelloCoreHelloGame_UPDATE_RATE])) {
    peas_ = [[JavaUtilArrayList alloc] initWithInt:0];
  }
  return self;
}

- (void)init__ OBJC_METHOD_FAMILY_NONE {
  id<PlaynCoreImage> bgImage = [((id<PlaynCoreAssets>) nil_chk([PlaynCorePlayN assets])) getImageWithNSString:@"images/bg.png"];
  id<PlaynCoreImageLayer> bgLayer = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImageLayerWithPlaynCoreImage:bgImage];
  [((id<PlaynCoreGroupLayer>) nil_chk([((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) rootLayer])) addWithPlaynCoreLayer:bgLayer];
  peaLayer_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createGroupLayer];
  [((id<PlaynCoreGroupLayer>) nil_chk([((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) rootLayer])) addWithPlaynCoreLayer:peaLayer_];
  (void) [((id<PlaynCoreAssets>) nil_chk([PlaynCorePlayN assets])) getImageWithNSString:[PlaynSampleHelloCorePea IMAGE]];
  [((id<PlaynCorePointer>) nil_chk([PlaynCorePlayN pointer])) setListenerWithPlaynCorePointer_Listener:[[PlaynSampleHelloCoreHelloGame_$1 alloc] initWithPlaynSampleHelloCoreHelloGame:self]];
}

- (void)updateWithInt:(int)delta {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(peas_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      PlaynSampleHelloCorePea *pea = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      [((PlaynSampleHelloCorePea *) nil_chk(pea)) updateWithInt:delta];
    }
  }
}

- (void)paintWithFloat:(float)alpha {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(peas_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      PlaynSampleHelloCorePea *pea = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      [((PlaynSampleHelloCorePea *) nil_chk(pea)) paintWithFloat:alpha];
    }
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynSampleHelloCoreHelloGame *typedCopy = (PlaynSampleHelloCoreHelloGame *) copy;
  typedCopy.peaLayer = peaLayer_;
  typedCopy.peas = peas_;
}

@end
@implementation PlaynSampleHelloCoreHelloGame_$1

@synthesize this$0 = this$0_;

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  PlaynSampleHelloCorePea *pea = [[PlaynSampleHelloCorePea alloc] initWithPlaynCoreGroupLayer:this$0_.peaLayer withFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) x] withFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) y]];
  [((id<JavaUtilList>) nil_chk(this$0_.peas)) addWithId:pea];
}

- (id)initWithPlaynSampleHelloCoreHelloGame:(PlaynSampleHelloCoreHelloGame *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynSampleHelloCoreHelloGame_$1 *typedCopy = (PlaynSampleHelloCoreHelloGame_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
