//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Dimensions.java
//
//  Created by Thomas on 7/10/13.
//

#import "pythagoras/d/Dimension.h"
#import "pythagoras/d/Dimensions.h"
#import "pythagoras/d/IDimension.h"

@implementation PythagorasDDimensions

static id<PythagorasDIDimension> PythagorasDDimensions_ZERO_;

+ (id<PythagorasDIDimension>)ZERO {
  return PythagorasDDimensions_ZERO_;
}

+ (NSString *)dimenToStringWithDouble:(double)width
                           withDouble:(double)height {
  return [NSString stringWithFormat:@"%fx%f", width, height];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [PythagorasDDimensions class]) {
    PythagorasDDimensions_ZERO_ = [[PythagorasDDimension alloc] initWithDouble:0 withDouble:0];
  }
}

@end
