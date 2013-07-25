//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/DimensionValue.java
//
//  Created by Thomas on 7/25/13.
//

#include "pythagoras/f/Dimension.h"
#include "pythagoras/f/IDimension.h"
#include "react/Value.h"
#include "tripleplay/util/DimensionValue.h"

@implementation TripleplayUtilDimensionValue

- (id)initWithPythagorasFIDimension:(id<PythagorasFIDimension>)value {
  return [super initWithId:value];
}

- (id)initWithFloat:(float)width
          withFloat:(float)height {
  return [super initWithId:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height]];
}

- (void)updateWithFloat:(float)width
              withFloat:(float)height {
  (void) [self updateWithId:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height]];
}

- (void)updateWidthWithFloat:(float)width {
  (void) [self updateWithId:[[PythagorasFDimension alloc] initWithFloat:width withFloat:[((id<PythagorasFIDimension>) nil_chk([self get])) height]]];
}

- (void)updateHeightWithFloat:(float)height {
  (void) [self updateWithId:[[PythagorasFDimension alloc] initWithFloat:[((id<PythagorasFIDimension>) nil_chk([self get])) width] withFloat:height]];
}

@end
