//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Dimension.java
//
//  Created by Thomas on 7/1/13.
//

#import "IDimension.h"
#import "Dimension.h"

@implementation PythagorasFDimension

@synthesize width_ = width__;
@synthesize height_ = height__;

- (id)init {
  return [self initPythagorasFDimensionWithFloat:0 withFloat:0];
}

- (id)initPythagorasFDimensionWithFloat:(float)width
                              withFloat:(float)height {
  if ((self = [super init])) {
    [self setSizeWithFloat:width withFloat:height];
  }
  return self;
}

- (id)initWithFloat:(float)width
          withFloat:(float)height {
  return [self initPythagorasFDimensionWithFloat:width withFloat:height];
}

- (id)initWithPythagorasFIDimension:(id<PythagorasFIDimension>)d {
  return [self initPythagorasFDimensionWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) height]];
}

- (void)setSizeWithFloat:(float)width
               withFloat:(float)height {
  self.width_ = width;
  self.height_ = height;
}

- (void)setSizeWithPythagorasFIDimension:(id<PythagorasFIDimension>)d {
  [self setSizeWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(d)) height]];
}

- (float)width {
  return width__;
}

- (float)height {
  return height__;
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFDimension *typedCopy = (PythagorasFDimension *) copy;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
}

@end
