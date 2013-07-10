//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Rectangle.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Math.h"
#import "pythagoras/f/IDimension.h"
#import "pythagoras/f/IPoint.h"
#import "pythagoras/f/IRectangle.h"
#import "pythagoras/f/Rectangle.h"

@implementation PythagorasFRectangle

@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize width_ = width__;
@synthesize height_ = height__;

- (id)init {
  return [super init];
}

- (id)initWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  if ((self = [super init])) {
    [self setBoundsWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) y] withFloat:0 withFloat:0];
  }
  return self;
}

- (id)initWithPythagorasFIDimension:(id<PythagorasFIDimension>)d {
  if ((self = [super init])) {
    [self setBoundsWithFloat:0 withFloat:0 withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) height]];
  }
  return self;
}

- (id)initWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
      withPythagorasFIDimension:(id<PythagorasFIDimension>)d {
  if ((self = [super init])) {
    [self setBoundsWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) y] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) height]];
  }
  return self;
}

- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)width
          withFloat:(float)height {
  if ((self = [super init])) {
    [self setBoundsWithFloat:x withFloat:y withFloat:width withFloat:height];
  }
  return self;
}

- (id)initWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  if ((self = [super init])) {
    [self setBoundsWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) x] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) y] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) width] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) height]];
  }
  return self;
}

- (void)setLocationWithFloat:(float)x
                   withFloat:(float)y {
  self.x_ = x;
  self.y_ = y;
}

- (void)setLocationWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  [self setLocationWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) y]];
}

- (void)setSizeWithFloat:(float)width
               withFloat:(float)height {
  self.width_ = width;
  self.height_ = height;
}

- (void)setSizeWithPythagorasFIDimension:(id<PythagorasFIDimension>)d {
  [self setSizeWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) height]];
}

- (void)setBoundsWithFloat:(float)x
                 withFloat:(float)y
                 withFloat:(float)width
                 withFloat:(float)height {
  self.x_ = x;
  self.y_ = y;
  self.height_ = height;
  self.width_ = width;
}

- (void)setBoundsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  [self setBoundsWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) x] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) y] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) width] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) height]];
}

- (void)growWithFloat:(float)dx
            withFloat:(float)dy {
  x__ -= dx;
  y__ -= dy;
  width__ += dx + dx;
  height__ += dy + dy;
}

- (void)translateWithFloat:(float)mx
                 withFloat:(float)my {
  x__ += mx;
  y__ += my;
}

- (void)addWithFloat:(float)px
           withFloat:(float)py {
  float x1 = [JavaLangMath minWithFloat:x__ withFloat:px];
  float x2 = [JavaLangMath maxWithFloat:x__ + width__ withFloat:px];
  float y1 = [JavaLangMath minWithFloat:y__ withFloat:py];
  float y2 = [JavaLangMath maxWithFloat:y__ + height__ withFloat:py];
  [self setBoundsWithFloat:x1 withFloat:y1 withFloat:x2 - x1 withFloat:y2 - y1];
}

- (void)addWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  [self addWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p)) y]];
}

- (void)addWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  float x1 = [JavaLangMath minWithFloat:x__ withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) x]];
  float x2 = [JavaLangMath maxWithFloat:x__ + width__ withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) x] + [((id<PythagorasFIRectangle>) NIL_CHK(r)) width]];
  float y1 = [JavaLangMath minWithFloat:y__ withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) y]];
  float y2 = [JavaLangMath maxWithFloat:y__ + height__ withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(r)) y] + [((id<PythagorasFIRectangle>) NIL_CHK(r)) height]];
  [self setBoundsWithFloat:x1 withFloat:y1 withFloat:x2 - x1 withFloat:y2 - y1];
}

- (float)x {
  return x__;
}

- (float)y {
  return y__;
}

- (float)width {
  return width__;
}

- (float)height {
  return height__;
}

- (void)setFrameWithFloat:(float)x
                withFloat:(float)y
                withFloat:(float)width
                withFloat:(float)height {
  [self setBoundsWithFloat:x withFloat:y withFloat:width withFloat:height];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFRectangle *typedCopy = (PythagorasFRectangle *) copy;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
}

@end
