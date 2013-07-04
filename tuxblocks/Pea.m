//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: C:\Users\Thomas\Documents\Eclipse\Tux\playn-samples\hello\core\src\main\java\playn\sample\hello\core\Pea.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Throwable.h"
#import "playn/core/Assets.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Image.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/Log.h"
#import "playn/core/PlayN.h"
#import "HelloGame.h"
#import "Pea.h"

@implementation PlaynSampleHelloCorePea

static NSString * PlaynSampleHelloCorePea_IMAGE_;

- (id<PlaynCoreImageLayer>)layer {
  return layer_;
}
- (void)setLayer:(id<PlaynCoreImageLayer>)layer {
  JreOperatorRetainedAssign(&layer_, self, layer);
}
@synthesize layer = layer_;
@synthesize elapsed = elapsed_;
@synthesize angVel = angVel_;

+ (NSString *)IMAGE {
  return PlaynSampleHelloCorePea_IMAGE_;
}

+ (void)setIMAGE:(NSString *)IMAGE {
  JreOperatorRetainedAssign(&PlaynSampleHelloCorePea_IMAGE_, self, IMAGE);
}

- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)peaLayer
                        withFloat:(float)x
                        withFloat:(float)y {
  if ((self = [super init])) {
    angVel_ = ([PlaynCorePlayN tick] % 10 - 5) / 1000.0f;
    id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) [PlaynCorePlayN assets]) getImageWithNSString:PlaynSampleHelloCorePea_IMAGE_];
    JreOperatorRetainedAssign(&layer_, self, [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImageLayerWithPlaynCoreImage:image]);
    [((id<PlaynCoreImage>) NIL_CHK(image)) addCallbackWithPlaynCoreUtilCallback:[[[PlaynSampleHelloCorePea_$1 alloc] initWithPlaynSampleHelloCorePea:self withFloat:x withFloat:y withPlaynCoreGroupLayer:peaLayer] autorelease]];
  }
  return self;
}

- (void)updateWithInt:(int)delta {
  elapsed_ += delta;
}

- (void)paintWithFloat:(float)alpha {
  float now = elapsed_ + alpha * PlaynSampleHelloCoreHelloGame_UPDATE_RATE;
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setRotationWithFloat:now * angVel_];
}

+ (void)initialize {
  if (self == [PlaynSampleHelloCorePea class]) {
    JreOperatorRetainedAssign(&PlaynSampleHelloCorePea_IMAGE_, self, @"images/pea.png");
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynSampleHelloCorePea *typedCopy = (PlaynSampleHelloCorePea *) copy;
  typedCopy.layer = layer_;
  typedCopy.elapsed = elapsed_;
  typedCopy.angVel = angVel_;
}

@end
@implementation PlaynSampleHelloCorePea_$1

- (PlaynSampleHelloCorePea *)this$0 {
  return this$0_;
}
- (void)setThis$0:(PlaynSampleHelloCorePea *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;
@synthesize val$x = val$x_;
@synthesize val$y = val$y_;
- (id<PlaynCoreGroupLayer>)val$peaLayer {
  return val$peaLayer_;
}
- (void)setVal$peaLayer:(id<PlaynCoreGroupLayer>)val$peaLayer {
  JreOperatorRetainedAssign(&val$peaLayer_, self, val$peaLayer);
}
@synthesize val$peaLayer = val$peaLayer_;

- (void)onSuccessWithId:(id<PlaynCoreImage>)image {
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.layer)) setOriginWithFloat:[((id<PlaynCoreImage>) NIL_CHK(image)) width] / 2.0f withFloat:[((id<PlaynCoreImage>) NIL_CHK(image)) height] / 2.0f];
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(this$0_.layer)) setTranslationWithFloat:val$x_ withFloat:val$y_];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(val$peaLayer_)) addWithPlaynCoreLayer:this$0_.layer];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)err {
  [((id<PlaynCoreLog>) [PlaynCorePlayN log]) errorWithNSString:@"Error loading image!" withJavaLangThrowable:err];
}

- (id)initWithPlaynSampleHelloCorePea:(PlaynSampleHelloCorePea *)outer$
                            withFloat:(float)capture$0
                            withFloat:(float)capture$1
              withPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$2 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
    val$x_ = capture$0;
    val$y_ = capture$1;
    JreOperatorRetainedAssign(&val$peaLayer_, self, capture$2);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$peaLayer_, self, nil);
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynSampleHelloCorePea_$1 *typedCopy = (PlaynSampleHelloCorePea_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$x = val$x_;
  typedCopy.val$y = val$y_;
  typedCopy.val$peaLayer = val$peaLayer_;
}

@end
