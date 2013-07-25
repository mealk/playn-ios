//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/FlatteningPathIterator.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSFloatArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/f/CubicCurves.h"
#include "pythagoras/f/FlatteningPathIterator.h"
#include "pythagoras/f/PathIterator.h"
#include "pythagoras/f/QuadCurves.h"

@implementation PythagorasFFlatteningPathIterator

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

- (id)initWithPythagorasFPathIterator:(id<PythagorasFPathIterator>)path
                            withFloat:(float)flatness {
  return [self initPythagorasFFlatteningPathIteratorWithPythagorasFPathIterator:path withFloat:flatness withInt:PythagorasFFlatteningPathIterator_BUFFER_LIMIT];
}

- (id)initPythagorasFFlatteningPathIteratorWithPythagorasFPathIterator:(id<PythagorasFPathIterator>)path
                                                             withFloat:(float)flatness
                                                               withInt:(int)limit {
  if ((self = [super init])) {
    bufEmpty_ = YES;
    coords_ = [IOSFloatArray arrayWithLength:6];
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
    self.bufSize = [JavaLangMath minWithInt:bufLimit_ withInt:PythagorasFFlatteningPathIterator_BUFFER_SIZE];
    self.buf = [IOSFloatArray arrayWithLength:bufSize_];
    self.bufIndex = bufSize_;
  }
  return self;
}

- (id)initWithPythagorasFPathIterator:(id<PythagorasFPathIterator>)path
                            withFloat:(float)flatness
                              withInt:(int)limit {
  return [self initPythagorasFFlatteningPathIteratorWithPythagorasFPathIterator:path withFloat:flatness withInt:limit];
}

- (float)flatness {
  return flatness__;
}

- (int)recursionLimit {
  return bufLimit_;
}

- (int)windingRule {
  return [((id<PythagorasFPathIterator>) nil_chk(p_)) windingRule];
}

- (BOOL)isDone {
  return bufEmpty_ && [((id<PythagorasFPathIterator>) nil_chk(p_)) isDone];
}

- (void)next {
  if (bufEmpty_) {
    [((id<PythagorasFPathIterator>) nil_chk(p_)) next];
  }
}

- (int)currentSegmentWithFloatArray:(IOSFloatArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  [self evaluate];
  int type = bufType_;
  if (type != PythagorasFPathIterator_SEG_CLOSE) {
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:0]) = px_;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:1]) = py_;
    if (type != PythagorasFPathIterator_SEG_MOVETO) {
      type = PythagorasFPathIterator_SEG_LINETO;
    }
  }
  return type;
}

- (void)evaluate {
  if (bufEmpty_) {
    bufType_ = [((id<PythagorasFPathIterator>) nil_chk(p_)) currentSegmentWithFloatArray:coords_];
  }
  switch (bufType_) {
    case PythagorasFPathIterator_SEG_MOVETO:
    case PythagorasFPathIterator_SEG_LINETO:
    px_ = [((IOSFloatArray *) nil_chk(coords_)) floatAtIndex:0];
    py_ = [((IOSFloatArray *) nil_chk(coords_)) floatAtIndex:1];
    break;
    case PythagorasFPathIterator_SEG_QUADTO:
    if (bufEmpty_) {
      bufIndex_ -= 6;
      (*[((IOSFloatArray *) nil_chk(buf_)) floatRefAtIndex:bufIndex_ + 0]) = px_;
      (*[((IOSFloatArray *) nil_chk(buf_)) floatRefAtIndex:bufIndex_ + 1]) = py_;
      [JavaLangSystem arraycopyWithId:coords_ withInt:0 withId:buf_ withInt:bufIndex_ + 2 withInt:4];
      bufSubdiv_ = 0;
    }
    while (bufSubdiv_ < bufLimit_) {
      if ([PythagorasFQuadCurves flatnessSqWithFloatArray:buf_ withInt:bufIndex_] < flatness2_) {
        break;
      }
      if (bufIndex_ <= 4) {
        IOSFloatArray *tmp = [IOSFloatArray arrayWithLength:bufSize_ + PythagorasFFlatteningPathIterator_BUFFER_CAPACITY];
        [JavaLangSystem arraycopyWithId:buf_ withInt:bufIndex_ withId:tmp withInt:bufIndex_ + PythagorasFFlatteningPathIterator_BUFFER_CAPACITY withInt:bufSize_ - bufIndex_];
        buf_ = tmp;
        bufSize_ += PythagorasFFlatteningPathIterator_BUFFER_CAPACITY;
        bufIndex_ += PythagorasFFlatteningPathIterator_BUFFER_CAPACITY;
      }
      [PythagorasFQuadCurves subdivideWithFloatArray:buf_ withInt:bufIndex_ withFloatArray:buf_ withInt:bufIndex_ - 4 withFloatArray:buf_ withInt:bufIndex_];
      bufIndex_ -= 4;
      bufSubdiv_++;
    }
    bufIndex_ += 4;
    px_ = [((IOSFloatArray *) nil_chk(buf_)) floatAtIndex:bufIndex_];
    py_ = [((IOSFloatArray *) nil_chk(buf_)) floatAtIndex:bufIndex_ + 1];
    bufEmpty_ = (bufIndex_ == bufSize_ - 2);
    if (bufEmpty_) {
      bufIndex_ = bufSize_;
      bufType_ = PythagorasFPathIterator_SEG_LINETO;
    }
    break;
    case PythagorasFPathIterator_SEG_CUBICTO:
    if (bufEmpty_) {
      bufIndex_ -= 8;
      (*[((IOSFloatArray *) nil_chk(buf_)) floatRefAtIndex:bufIndex_ + 0]) = px_;
      (*[((IOSFloatArray *) nil_chk(buf_)) floatRefAtIndex:bufIndex_ + 1]) = py_;
      [JavaLangSystem arraycopyWithId:coords_ withInt:0 withId:buf_ withInt:bufIndex_ + 2 withInt:6];
      bufSubdiv_ = 0;
    }
    while (bufSubdiv_ < bufLimit_) {
      if ([PythagorasFCubicCurves flatnessSqWithFloatArray:buf_ withInt:bufIndex_] < flatness2_) {
        break;
      }
      if (bufIndex_ <= 6) {
        IOSFloatArray *tmp = [IOSFloatArray arrayWithLength:bufSize_ + PythagorasFFlatteningPathIterator_BUFFER_CAPACITY];
        [JavaLangSystem arraycopyWithId:buf_ withInt:bufIndex_ withId:tmp withInt:bufIndex_ + PythagorasFFlatteningPathIterator_BUFFER_CAPACITY withInt:bufSize_ - bufIndex_];
        buf_ = tmp;
        bufSize_ += PythagorasFFlatteningPathIterator_BUFFER_CAPACITY;
        bufIndex_ += PythagorasFFlatteningPathIterator_BUFFER_CAPACITY;
      }
      [PythagorasFCubicCurves subdivideWithFloatArray:buf_ withInt:bufIndex_ withFloatArray:buf_ withInt:bufIndex_ - 6 withFloatArray:buf_ withInt:bufIndex_];
      bufIndex_ -= 6;
      bufSubdiv_++;
    }
    bufIndex_ += 6;
    px_ = [((IOSFloatArray *) nil_chk(buf_)) floatAtIndex:bufIndex_];
    py_ = [((IOSFloatArray *) nil_chk(buf_)) floatAtIndex:bufIndex_ + 1];
    bufEmpty_ = (bufIndex_ == bufSize_ - 2);
    if (bufEmpty_) {
      bufIndex_ = bufSize_;
      bufType_ = PythagorasFPathIterator_SEG_LINETO;
    }
    break;
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFFlatteningPathIterator *typedCopy = (PythagorasFFlatteningPathIterator *) copy;
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
