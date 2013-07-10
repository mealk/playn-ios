//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/sample/hello/core/HelloGame.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "playn/core/Assets.h"
#import "playn/core/Game.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Image.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Pointer.h"
#import "playn/sample/hello/core/HelloGame.h"
#import "playn/sample/hello/core/Pea.h"

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
  id<PlaynCoreImage> bgImage = [((id<PlaynCoreAssets>) [PlaynCorePlayN assets]) getImageWithNSString:@"images/bg.png"];
  id<PlaynCoreImageLayer> bgLayer = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImageLayerWithPlaynCoreImage:bgImage];
  [((id<PlaynCoreGroupLayer>) [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) rootLayer]) addWithPlaynCoreLayer:bgLayer];
  peaLayer_ = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createGroupLayer];
  [((id<PlaynCoreGroupLayer>) [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) rootLayer]) addWithPlaynCoreLayer:peaLayer_];
  (void) [((id<PlaynCoreAssets>) [PlaynCorePlayN assets]) getImageWithNSString:[PlaynSampleHelloCorePea IMAGE]];
  [((id<PlaynCorePointer>) [PlaynCorePlayN pointer]) setListenerWithPlaynCorePointer_Listener:[[PlaynSampleHelloCoreHelloGame_$1 alloc] initWithPlaynSampleHelloCoreHelloGame:self]];
}

- (void)updateWithInt:(int)delta {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(peas_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      PlaynSampleHelloCorePea *pea = ((PlaynSampleHelloCorePea *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((PlaynSampleHelloCorePea *) NIL_CHK(pea)) updateWithInt:delta];
    }
  }
}

- (void)paintWithFloat:(float)alpha {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(peas_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      PlaynSampleHelloCorePea *pea = ((PlaynSampleHelloCorePea *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((PlaynSampleHelloCorePea *) NIL_CHK(pea)) paintWithFloat:alpha];
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
  PlaynSampleHelloCorePea *pea = [[PlaynSampleHelloCorePea alloc] initWithPlaynCoreGroupLayer:this$0_.peaLayer withFloat:[((id<PlaynCorePointer_Event>) NIL_CHK(event)) x] withFloat:[((id<PlaynCorePointer_Event>) NIL_CHK(event)) y]];
  [((id<JavaUtilList>) NIL_CHK(this$0_.peas)) addWithId:pea];
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