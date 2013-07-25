//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/Rectangles.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Math.h"
#include "pythagoras/i/IRectangle.h"
#include "pythagoras/i/Rectangle.h"
#include "pythagoras/i/Rectangles.h"

@implementation PythagorasIRectangles

+ (void)intersectWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)src1
                 withPythagorasIIRectangle:(id<PythagorasIIRectangle>)src2
                  withPythagorasIRectangle:(PythagorasIRectangle *)dst {
  int x1 = [JavaLangMath maxWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) minX] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) minX]];
  int y1 = [JavaLangMath maxWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) minY] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) minY]];
  int x2 = [JavaLangMath minWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) maxX] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) maxX]];
  int y2 = [JavaLangMath minWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) maxY] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) maxY]];
  [((PythagorasIRectangle *) nil_chk(dst)) setBoundsWithInt:x1 withInt:y1 withInt:x2 - x1 withInt:y2 - y1];
}

+ (void)union__WithPythagorasIIRectangle:(id<PythagorasIIRectangle>)src1
               withPythagorasIIRectangle:(id<PythagorasIIRectangle>)src2
                withPythagorasIRectangle:(PythagorasIRectangle *)dst {
  int x1 = [JavaLangMath minWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) minX] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) minX]];
  int y1 = [JavaLangMath minWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) minY] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) minY]];
  int x2 = [JavaLangMath maxWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) maxX] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) maxX]];
  int y2 = [JavaLangMath maxWithInt:[((id<PythagorasIIRectangle>) nil_chk(src1)) maxY] withInt:[((id<PythagorasIIRectangle>) nil_chk(src2)) maxY]];
  [((PythagorasIRectangle *) nil_chk(dst)) setBoundsWithInt:x1 withInt:y1 withInt:x2 - x1 withInt:y2 - y1];
}

- (id)init {
  return [super init];
}

@end
