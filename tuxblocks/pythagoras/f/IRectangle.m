//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IRectangle.java
//
//  Created by Thomas on 7/1/13.
//

#import "Dimension.h"
#import "ILine.h"
#import "IPoint.h"
#import "Point.h"
#import "Rectangle.h"
#import "IRectangle.h"


@implementation PythagorasFIRectangle

+ (int)OUT_LEFT {
  return PythagorasFIRectangle_OUT_LEFT;
}

+ (int)OUT_TOP {
  return PythagorasFIRectangle_OUT_TOP;
}

+ (int)OUT_RIGHT {
  return PythagorasFIRectangle_OUT_RIGHT;
}

+ (int)OUT_BOTTOM {
  return PythagorasFIRectangle_OUT_BOTTOM;
}

- (id)copyWithZoneWithNSZone:(NSZone *)zone OBJC_METHOD_FAMILY_NONE {
  return [[self clone] retain];
}

@end
