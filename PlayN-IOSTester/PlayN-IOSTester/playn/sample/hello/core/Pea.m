//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/sample/hello/core/Pea.java
//
//  Created by Thomas on 7/10/13.
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
#import "playn/sample/hello/core/HelloGame.h"
#import "playn/sample/hello/core/Pea.h"

@implementation PlaynSampleHelloCorePea

static NSString * PlaynSampleHelloCorePea_IMAGE_;

@synthesize layer = layer_;
@synthesize elapsed = elapsed_;
@synthesize angVel = angVel_;

+ (NSString *)IMAGE {
  return PlaynSampleHelloCorePea_IMAGE_;
}

+ (void)setIMAGE:(NSString *)IMAGE {
  PlaynSampleHelloCorePea_IMAGE_ = IMAGE;
}

- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)peaLayer
                        withFloat:(float)x
                        withFloat:(float)y {
  if ((self = [super init])) {
    angVel_ = ([PlaynCorePlayN tick] % 10 - 5) / 1000.0f;
    id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) [PlaynCorePlayN assets]) getImageWithNSString:PlaynSampleHelloCorePea_IMAGE_];
    layer_ = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImageLayerWithPlaynCoreImage:image];
    [((id<PlaynCoreImage>) NIL_CHK(image)) addCallbackWithPlaynCoreUtilCallback:[[PlaynSampleHelloCorePea_$1 alloc] initWithPlaynSampleHelloCorePea:self withFloat:x withFloat:y withPlaynCoreGroupLayer:peaLayer]];
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
    PlaynSampleHelloCorePea_IMAGE_ = @"images/pea.png";
  }
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

@synthesize this$0 = this$0_;
@synthesize val$x = val$x_;
@synthesize val$y = val$y_;
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
    this$0_ = outer$;
    val$x_ = capture$0;
    val$y_ = capture$1;
    val$peaLayer_ = capture$2;
  }
  return self;
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