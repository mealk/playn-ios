//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Line.java
//
//  Created by Thomas on 7/1/13.
//

#import "IPoint.h"
#import "Line.h"

@implementation PythagorasDLine

@synthesize x1_ = x1__;
@synthesize y1_ = y1__;
@synthesize x2_ = x2__;
@synthesize y2_ = y2__;

- (id)init {
  return [super init];
}

- (id)initWithDouble:(double)x1
          withDouble:(double)y1
          withDouble:(double)x2
          withDouble:(double)y2 {
  if ((self = [super init])) {
    [self setLineWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2];
  }
  return self;
}

- (id)initWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
          withPythagorasDIPoint:(id<PythagorasDIPoint>)p2 {
  if ((self = [super init])) {
    [self setLineWithPythagorasDIPoint:p1 withPythagorasDIPoint:p2];
  }
  return self;
}

- (void)setLineWithDouble:(double)x1
               withDouble:(double)y1
               withDouble:(double)x2
               withDouble:(double)y2 {
  self.x1_ = x1;
  self.y1_ = y1;
  self.x2_ = x2;
  self.y2_ = y2;
}

- (void)setLineWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
               withPythagorasDIPoint:(id<PythagorasDIPoint>)p2 {
  [self setLineWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(p1)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p1)) y] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p2)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p2)) y]];
}

- (double)x1 {
  return x1__;
}

- (double)y1 {
  return y1__;
}

- (double)x2 {
  return x2__;
}

- (double)y2 {
  return y2__;
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDLine *typedCopy = (PythagorasDLine *) copy;
  typedCopy.x1_ = x1__;
  typedCopy.y1_ = y1__;
  typedCopy.x2_ = x2__;
  typedCopy.y2_ = y2__;
}

@end
