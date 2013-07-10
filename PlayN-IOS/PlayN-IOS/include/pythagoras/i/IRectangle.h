//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/IRectangle.java
//
//  Created by Thomas on 7/10/13.
//

@class PythagorasIDimension;
@class PythagorasIPoint;
@class PythagorasIRectangle;
@protocol PythagorasIIPoint;

#import "JreEmulation.h"
#import "pythagoras/i/IShape.h"

#define PythagorasIIRectangle_OUT_BOTTOM 8
#define PythagorasIIRectangle_OUT_LEFT 1
#define PythagorasIIRectangle_OUT_RIGHT 4
#define PythagorasIIRectangle_OUT_TOP 2

@protocol PythagorasIIRectangle < PythagorasIIShape, NSCopying, NSObject >
- (int)x;
- (int)y;
- (int)width;
- (int)height;
- (int)minX;
- (int)minY;
- (int)maxX;
- (int)maxY;
- (PythagorasIPoint *)location;
- (PythagorasIPoint *)locationWithPythagorasIPoint:(PythagorasIPoint *)target;
- (PythagorasIDimension *)size;
- (PythagorasIDimension *)sizeWithPythagorasIDimension:(PythagorasIDimension *)target;
- (PythagorasIRectangle *)intersectionWithInt:(int)rx
                                      withInt:(int)ry
                                      withInt:(int)rw
                                      withInt:(int)rh;
- (PythagorasIRectangle *)intersectionWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)r;
- (PythagorasIRectangle *)union__WithPythagorasIIRectangle:(id<PythagorasIIRectangle>)r;
- (int)outcodeWithInt:(int)px
              withInt:(int)py;
- (int)outcodeWithPythagorasIIPoint:(id<PythagorasIIPoint>)point;
- (PythagorasIRectangle *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasIIRectangle : NSObject {
}
+ (int)OUT_LEFT;
+ (int)OUT_TOP;
+ (int)OUT_RIGHT;
+ (int)OUT_BOTTOM;
@end
