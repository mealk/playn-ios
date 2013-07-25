//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/RoundRectangle.java
//
//  Created by Thomas on 7/25/13.
//

#include "pythagoras/f/IRoundRectangle.h"
#include "pythagoras/f/RoundRectangle.h"

@implementation PythagorasFRoundRectangle

@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize width_ = width__;
@synthesize height_ = height__;
@synthesize arcwidth = arcwidth_;
@synthesize archeight = archeight_;

- (id)init {
  return [super init];
}

- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)width
          withFloat:(float)height
          withFloat:(float)arcwidth
          withFloat:(float)archeight {
  if ((self = [super init])) {
    [self setRoundRectWithFloat:x withFloat:y withFloat:width withFloat:height withFloat:arcwidth withFloat:archeight];
  }
  return self;
}

- (void)setRoundRectWithFloat:(float)x
                    withFloat:(float)y
                    withFloat:(float)width
                    withFloat:(float)height
                    withFloat:(float)arcwidth
                    withFloat:(float)archeight {
  self.x_ = x;
  self.y_ = y;
  self.width_ = width;
  self.height_ = height;
  self.arcwidth = arcwidth;
  self.archeight = archeight;
}

- (void)setRoundRectWithPythagorasFIRoundRectangle:(id<PythagorasFIRoundRectangle>)rr {
  [self setRoundRectWithFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) x] withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) y] withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) width] withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) height] withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) arcWidth] withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) arcHeight]];
}

- (float)arcWidth {
  return arcwidth_;
}

- (float)arcHeight {
  return archeight_;
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
  [self setRoundRectWithFloat:x withFloat:y withFloat:width withFloat:height withFloat:arcwidth_ withFloat:archeight_];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFRoundRectangle *typedCopy = (PythagorasFRoundRectangle *) copy;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
  typedCopy.arcwidth = arcwidth_;
  typedCopy.archeight = archeight_;
}

@end
