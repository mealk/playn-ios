//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractDimension.java
//
//  Created by Thomas on 7/10/13.
//

#import "pythagoras/d/AbstractDimension.h"
#import "pythagoras/d/Dimension.h"
#import "pythagoras/d/Dimensions.h"
#import "pythagoras/d/IDimension.h"
#import "pythagoras/util/Platform.h"

@implementation PythagorasDAbstractDimension

- (PythagorasDDimension *)clone {
  return [[PythagorasDDimension alloc] initWithPythagorasDIDimension:self];
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithDouble:[self width]] ^ [PythagorasUtilPlatform hashCodeWithDouble:[self height]];
}

- (BOOL)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[PythagorasDAbstractDimension class]]) {
    PythagorasDAbstractDimension *d = (PythagorasDAbstractDimension *) obj;
    return ([((PythagorasDAbstractDimension *) NIL_CHK(d)) width] == [self width] && [((PythagorasDAbstractDimension *) NIL_CHK(d)) height] == [self height]);
  }
  return NO;
}

- (NSString *)description {
  return [PythagorasDDimensions dimenToStringWithDouble:[self width] withDouble:[self height]];
}

- (double)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)width {
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
