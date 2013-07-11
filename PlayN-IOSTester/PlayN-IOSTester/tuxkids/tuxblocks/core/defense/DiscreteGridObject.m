//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/DiscreteGridObject.java
//
//  Created by Thomas on 7/10/13.
//

#import "pythagoras/i/Point.h"
#import "tuxkids/tuxblocks/core/defense/DiscreteGridObject.h"
#import "tuxkids/tuxblocks/core/defense/Grid.h"
#import "tuxkids/tuxblocks/core/defense/GridObject.h"

@implementation TuxkidsTuxblocksCoreDefenseDiscreteGridObject

@synthesize coordinates_ = coordinates__;
@synthesize baseDepth = baseDepth_;

- (PythagorasIPoint *)coordinates {
  return coordinates__;
}

- (float)depthRow {
  return ((PythagorasIPoint *) NIL_CHK(coordinates__)).x_;
}

- (float)depthCol {
  return ((PythagorasIPoint *) NIL_CHK(coordinates__)).y_;
}

- (void)updateDepth {
  if (grid_ != nil) {
    [self setDepthWithFloat:baseDepth_ + ([self depthRow] * [grid_ cols] + [self depthCol]) * TuxkidsTuxblocksCoreDefenseGridObject_MAX_BASE_DEPTH];
  }
}

- (BOOL)updateWithInt:(int)delta {
  [self updateDepth];
  return NO;
}

- (void)placeWithTuxkidsTuxblocksCoreDefenseGrid:(TuxkidsTuxblocksCoreDefenseGrid *)grid
                                       withFloat:(float)baseDepth {
  [super placeWithTuxkidsTuxblocksCoreDefenseGrid:grid];
  self.baseDepth = baseDepth;
}

- (void)setDepthWithFloat:(float)depth {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  if ((self = [super init])) {
    coordinates__ = [[PythagorasIPoint alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreDefenseDiscreteGridObject *typedCopy = (TuxkidsTuxblocksCoreDefenseDiscreteGridObject *) copy;
  typedCopy.coordinates_ = coordinates__;
  typedCopy.baseDepth = baseDepth_;
}

@end
