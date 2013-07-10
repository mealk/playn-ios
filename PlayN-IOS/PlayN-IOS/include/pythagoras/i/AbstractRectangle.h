//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/AbstractRectangle.java
//
//  Created by Thomas on 7/10/13.
//

@class PythagorasIDimension;
@class PythagorasIPoint;
@class PythagorasIRectangle;
@protocol PythagorasIIPoint;

#import "JreEmulation.h"
#import "pythagoras/i/IRectangle.h"

@interface PythagorasIAbstractRectangle : NSObject < PythagorasIIRectangle > {
}

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
- (int)outcodeWithPythagorasIIPoint:(id<PythagorasIIPoint>)p;
- (PythagorasIRectangle *)clone;
- (BOOL)isEmpty;
- (BOOL)containsWithInt:(int)px
                withInt:(int)py;
- (BOOL)containsWithPythagorasIIPoint:(id<PythagorasIIPoint>)point;
- (BOOL)containsWithInt:(int)rx
                withInt:(int)ry
                withInt:(int)rw
                withInt:(int)rh;
- (BOOL)containsWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)rect;
- (BOOL)intersectsWithInt:(int)rx
                  withInt:(int)ry
                  withInt:(int)rw
                  withInt:(int)rh;
- (BOOL)intersectsWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)rect;
- (PythagorasIRectangle *)bounds;
- (PythagorasIRectangle *)boundsWithPythagorasIRectangle:(PythagorasIRectangle *)target;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
- (NSString *)description;
- (int)height;
- (int)width;
- (int)x;
- (int)y;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end
