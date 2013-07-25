//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/AbstractPoint.java
//
//  Created by Thomas on 7/25/13.
//

#include "pythagoras/i/AbstractPoint.h"
#include "pythagoras/i/IPoint.h"
#include "pythagoras/i/Point.h"
#include "pythagoras/i/Points.h"

@implementation PythagorasIAbstractPoint

- (int)distanceSqWithInt:(int)px
                 withInt:(int)py {
  return [PythagorasIPoints distanceSqWithInt:[self x] withInt:[self y] withInt:px withInt:py];
}

- (int)distanceSqWithPythagorasIIPoint:(id<PythagorasIIPoint>)p {
  return [PythagorasIPoints distanceSqWithInt:[self x] withInt:[self y] withInt:[((id<PythagorasIIPoint>) nil_chk(p)) x] withInt:[((id<PythagorasIIPoint>) nil_chk(p)) y]];
}

- (int)distanceWithInt:(int)px
               withInt:(int)py {
  return [PythagorasIPoints distanceWithInt:[self x] withInt:[self y] withInt:px withInt:py];
}

- (int)distanceWithPythagorasIIPoint:(id<PythagorasIIPoint>)p {
  return [PythagorasIPoints distanceWithInt:[self x] withInt:[self y] withInt:[((id<PythagorasIIPoint>) nil_chk(p)) x] withInt:[((id<PythagorasIIPoint>) nil_chk(p)) y]];
}

- (PythagorasIPoint *)clone {
  return [[PythagorasIPoint alloc] initWithPythagorasIIPoint:self];
}

- (BOOL)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[PythagorasIAbstractPoint class]]) {
    PythagorasIAbstractPoint *p = (PythagorasIAbstractPoint *) obj;
    return [self x] == [((PythagorasIAbstractPoint *) nil_chk(p)) x] && [self y] == [((PythagorasIAbstractPoint *) nil_chk(p)) y];
  }
  return NO;
}

- (NSUInteger)hash {
  return [self x] ^ [self y];
}

- (NSString *)description {
  return [PythagorasIPoints pointToStringWithInt:[self x] withInt:[self y]];
}

- (int)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

@end
