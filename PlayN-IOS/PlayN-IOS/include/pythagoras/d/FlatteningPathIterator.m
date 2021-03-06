//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/FlatteningPathIterator.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSDoubleArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/d/CubicCurves.h"
#include "pythagoras/d/FlatteningPathIterator.h"
#include "pythagoras/d/PathIterator.h"
#include "pythagoras/d/QuadCurves.h"

@implementation PythagorasDFlatteningPathIterator

@synthesize bufType = bufType_;
@synthesize bufLimit = bufLimit_;
@synthesize bufSize = bufSize_;
@synthesize bufIndex = bufIndex_;
@synthesize bufSubdiv = bufSubdiv_;
@synthesize buf = buf_;
@synthesize bufEmpty = bufEmpty_;
@synthesize p = p_;
@synthesize flatness_ = flatness__;
@synthesize flatness2 = flatness2_;
@synthesize px = px_;
@synthesize py = py_;
@synthesize coords = coords_;

- (id)initWithPythagorasDPathIterator:(id<PythagorasDPathIterator>)path
                           withDouble:(double)flatness {
  return [self initPythagorasDFlatteningPathIteratorWithPythagorasDPathIterator:path withDouble:flatness withInt:PythagorasDFlatteningPathIterator_BUFFER_LIMIT];
}

- (id)initPythagorasDFlatteningPathIteratorWithPythagorasDPathIterator:(id<PythagorasDPathIterator>)path
                                                            withDouble:(double)flatness
                                                               withInt:(int)limit {
  if ((self = [super init])) {
    bufEmpty_ = YES;
    coords_ = [IOSDoubleArray arrayWithLength:6];
    if (flatness < 0) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Flatness is less then zero"];
    }
    if (limit < 0) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Limit is less then zero"];
    }
    if (path == nil) {
      @throw [[JavaLangNullPointerException alloc] initWithNSString:@"Path is null"];
    }
    self.p = path;
    self.flatness_ = flatness;
    self.flatness2 = flatness * flatness;
    self.bufLimit = limit;
    self.bufSize = [JavaLangMath minWithInt:bufLimit_ withInt:PythagorasDFlatteningPathIterator_BUFFER_SIZE];
    self.buf = [IOSDoubleArray arrayWithLength:bufSize_];
    self.bufIndex = bufSize_;
  }
  return self;
}

- (id)initWithPythagorasDPathIterator:(id<PythagorasDPathIterator>)path
                           withDouble:(double)flatness
                              withInt:(int)limit {
  return [self initPythagorasDFlatteningPathIteratorWithPythagorasDPathIterator:path withDouble:flatness withInt:limit];
}

- (double)flatness {
  return flatness__;
}

- (int)recursionLimit {
  return bufLimit_;
}

- (int)windingRule {
  return [((id<PythagorasDPathIterator>) nil_chk(p_)) windingRule];
}

- (BOOL)isDone {
  return bufEmpty_ && [((id<PythagorasDPathIterator>) nil_chk(p_)) isDone];
}

- (void)next {
  if (bufEmpty_) {
    [((id<PythagorasDPathIterator>) nil_chk(p_)) next];
  }
}

- (int)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  [self evaluate];
  int type = bufType_;
  if (type != PythagorasDPathIterator_SEG_CLOSE) {
    (*[((IOSDoubleArray *) nil_chk(coords)) doubleRefAtIndex:0]) = px_;
    (*[((IOSDoubleArray *) nil_chk(coords)) doubleRefAtIndex:1]) = py_;
    if (type != PythagorasDPathIterator_SEG_MOVETO) {
      type = PythagorasDPathIterator_SEG_LINETO;
    }
  }
  return type;
}

- (void)evaluate {
  if (bufEmpty_) {
    bufType_ = [((id<PythagorasDPathIterator>) nil_chk(p_)) currentSegmentWithDoubleArray:coords_];
  }
  switch (bufType_) {
    case PythagorasDPathIterator_SEG_MOVETO:
    case PythagorasDPathIterator_SEG_LINETO:
    px_ = [((IOSDoubleArray *) nil_chk(coords_)) doubleAtIndex:0];
    py_ = [((IOSDoubleArray *) nil_chk(coords_)) doubleAtIndex:1];
    break;
    case PythagorasDPathIterator_SEG_QUADTO:
    if (bufEmpty_) {
      bufIndex_ -= 6;
      (*[((IOSDoubleArray *) nil_chk(buf_)) doubleRefAtIndex:bufIndex_ + 0]) = px_;
      (*[((IOSDoubleArray *) nil_chk(buf_)) doubleRefAtIndex:bufIndex_ + 1]) = py_;
      [JavaLangSystem arraycopyWithId:coords_ withInt:0 withId:buf_ withInt:bufIndex_ + 2 withInt:4];
      bufSubdiv_ = 0;
    }
    while (bufSubdiv_ < bufLimit_) {
      if ([PythagorasDQuadCurves flatnessSqWithDoubleArray:buf_ withInt:bufIndex_] < flatness2_) {
        break;
      }
      if (bufIndex_ <= 4) {
        IOSDoubleArray *tmp = [IOSDoubleArray arrayWithLength:bufSize_ + PythagorasDFlatteningPathIterator_BUFFER_CAPACITY];
        [JavaLangSystem arraycopyWithId:buf_ withInt:bufIndex_ withId:tmp withInt:bufIndex_ + PythagorasDFlatteningPathIterator_BUFFER_CAPACITY withInt:bufSize_ - bufIndex_];
        buf_ = tmp;
        bufSize_ += PythagorasDFlatteningPathIterator_BUFFER_CAPACITY;
        bufIndex_ += PythagorasDFlatteningPathIterator_BUFFER_CAPACITY;
      }
      [PythagorasDQuadCurves subdivideWithDoubleArray:buf_ withInt:bufIndex_ withDoubleArray:buf_ withInt:bufIndex_ - 4 withDoubleArray:buf_ withInt:bufIndex_];
      bufIndex_ -= 4;
      bufSubdiv_++;
    }
    bufIndex_ += 4;
    px_ = [((IOSDoubleArray *) nil_chk(buf_)) doubleAtIndex:bufIndex_];
    py_ = [((IOSDoubleArray *) nil_chk(buf_)) doubleAtIndex:bufIndex_ + 1];
    bufEmpty_ = (bufIndex_ == bufSize_ - 2);
    if (bufEmpty_) {
      bufIndex_ = bufSize_;
      bufType_ = PythagorasDPathIterator_SEG_LINETO;
    }
    break;
    case PythagorasDPathIterator_SEG_CUBICTO:
    if (bufEmpty_) {
      bufIndex_ -= 8;
      (*[((IOSDoubleArray *) nil_chk(buf_)) doubleRefAtIndex:bufIndex_ + 0]) = px_;
      (*[((IOSDoubleArray *) nil_chk(buf_)) doubleRefAtIndex:bufIndex_ + 1]) = py_;
      [JavaLangSystem arraycopyWithId:coords_ withInt:0 withId:buf_ withInt:bufIndex_ + 2 withInt:6];
      bufSubdiv_ = 0;
    }
    while (bufSubdiv_ < bufLimit_) {
      if ([PythagorasDCubicCurves flatnessSqWithDoubleArray:buf_ withInt:bufIndex_] < flatness2_) {
        break;
      }
      if (bufIndex_ <= 6) {
        IOSDoubleArray *tmp = [IOSDoubleArray arrayWithLength:bufSize_ + PythagorasDFlatteningPathIterator_BUFFER_CAPACITY];
        [JavaLangSystem arraycopyWithId:buf_ withInt:bufIndex_ withId:tmp withInt:bufIndex_ + PythagorasDFlatteningPathIterator_BUFFER_CAPACITY withInt:bufSize_ - bufIndex_];
        buf_ = tmp;
        bufSize_ += PythagorasDFlatteningPathIterator_BUFFER_CAPACITY;
        bufIndex_ += PythagorasDFlatteningPathIterator_BUFFER_CAPACITY;
      }
      [PythagorasDCubicCurves subdivideWithDoubleArray:buf_ withInt:bufIndex_ withDoubleArray:buf_ withInt:bufIndex_ - 6 withDoubleArray:buf_ withInt:bufIndex_];
      bufIndex_ -= 6;
      bufSubdiv_++;
    }
    bufIndex_ += 6;
    px_ = [((IOSDoubleArray *) nil_chk(buf_)) doubleAtIndex:bufIndex_];
    py_ = [((IOSDoubleArray *) nil_chk(buf_)) doubleAtIndex:bufIndex_ + 1];
    bufEmpty_ = (bufIndex_ == bufSize_ - 2);
    if (bufEmpty_) {
      bufIndex_ = bufSize_;
      bufType_ = PythagorasDPathIterator_SEG_LINETO;
    }
    break;
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDFlatteningPathIterator *typedCopy = (PythagorasDFlatteningPathIterator *) copy;
  typedCopy.bufType = bufType_;
  typedCopy.bufLimit = bufLimit_;
  typedCopy.bufSize = bufSize_;
  typedCopy.bufIndex = bufIndex_;
  typedCopy.bufSubdiv = bufSubdiv_;
  typedCopy.buf = buf_;
  typedCopy.bufEmpty = bufEmpty_;
  typedCopy.p = p_;
  typedCopy.flatness_ = flatness__;
  typedCopy.flatness2 = flatness2_;
  typedCopy.px = px_;
  typedCopy.py = py_;
  typedCopy.coords = coords_;
}

@end
