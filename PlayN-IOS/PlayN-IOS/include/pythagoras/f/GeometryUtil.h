//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/GeometryUtil.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;

#import "JreEmulation.h"

@interface PythagorasFGeometryUtil : NSObject {
}

+ (float)EPSILON;
+ (int)intersectLinesWithParamsWithFloat:(float)x1
                               withFloat:(float)y1
                               withFloat:(float)x2
                               withFloat:(float)y2
                               withFloat:(float)x3
                               withFloat:(float)y3
                               withFloat:(float)x4
                               withFloat:(float)y4
                  withJavaLangFloatArray:(IOSFloatArray *)params;
+ (int)intersectLinesWithFloat:(float)x1
                     withFloat:(float)y1
                     withFloat:(float)x2
                     withFloat:(float)y2
                     withFloat:(float)x3
                     withFloat:(float)y3
                     withFloat:(float)x4
                     withFloat:(float)y4
        withJavaLangFloatArray:(IOSFloatArray *)point;
+ (int)intersectLineAndQuadWithFloat:(float)x1
                           withFloat:(float)y1
                           withFloat:(float)x2
                           withFloat:(float)y2
                           withFloat:(float)qx1
                           withFloat:(float)qy1
                           withFloat:(float)qx2
                           withFloat:(float)qy2
                           withFloat:(float)qx3
                           withFloat:(float)qy3
              withJavaLangFloatArray:(IOSFloatArray *)params;
+ (int)intersectLineAndCubicWithFloat:(float)x1
                            withFloat:(float)y1
                            withFloat:(float)x2
                            withFloat:(float)y2
                            withFloat:(float)cx1
                            withFloat:(float)cy1
                            withFloat:(float)cx2
                            withFloat:(float)cy2
                            withFloat:(float)cx3
                            withFloat:(float)cy3
                            withFloat:(float)cx4
                            withFloat:(float)cy4
               withJavaLangFloatArray:(IOSFloatArray *)params;
+ (int)intersectQuadsWithFloat:(float)x1
                     withFloat:(float)y1
                     withFloat:(float)x2
                     withFloat:(float)y2
                     withFloat:(float)x3
                     withFloat:(float)y3
                     withFloat:(float)qx1
                     withFloat:(float)qy1
                     withFloat:(float)qx2
                     withFloat:(float)qy2
                     withFloat:(float)qx3
                     withFloat:(float)qy3
        withJavaLangFloatArray:(IOSFloatArray *)params;
+ (int)intersectQuadAndCubicWithFloat:(float)qx1
                            withFloat:(float)qy1
                            withFloat:(float)qx2
                            withFloat:(float)qy2
                            withFloat:(float)qx3
                            withFloat:(float)qy3
                            withFloat:(float)cx1
                            withFloat:(float)cy1
                            withFloat:(float)cx2
                            withFloat:(float)cy2
                            withFloat:(float)cx3
                            withFloat:(float)cy3
                            withFloat:(float)cx4
                            withFloat:(float)cy4
               withJavaLangFloatArray:(IOSFloatArray *)params;
+ (int)intersectCubicsWithFloat:(float)x1
                      withFloat:(float)y1
                      withFloat:(float)x2
                      withFloat:(float)y2
                      withFloat:(float)x3
                      withFloat:(float)y3
                      withFloat:(float)x4
                      withFloat:(float)y4
                      withFloat:(float)cx1
                      withFloat:(float)cy1
                      withFloat:(float)cx2
                      withFloat:(float)cy2
                      withFloat:(float)cx3
                      withFloat:(float)cy3
                      withFloat:(float)cx4
                      withFloat:(float)cy4
         withJavaLangFloatArray:(IOSFloatArray *)params;
+ (float)lineWithFloat:(float)t
             withFloat:(float)x1
             withFloat:(float)x2;
+ (float)quadWithFloat:(float)t
             withFloat:(float)x1
             withFloat:(float)x2
             withFloat:(float)x3;
+ (float)cubicWithFloat:(float)t
              withFloat:(float)x1
              withFloat:(float)x2
              withFloat:(float)x3
              withFloat:(float)x4;
+ (void)subQuadWithJavaLangFloatArray:(IOSFloatArray *)coef
                            withFloat:(float)t0
                             withBOOL:(BOOL)left;
+ (void)subCubicWithJavaLangFloatArray:(IOSFloatArray *)coef
                             withFloat:(float)t0
                              withBOOL:(BOOL)left;
+ (void)cubicNewtonWithJavaLangFloatArray:(IOSFloatArray *)xCoefs1
                   withJavaLangFloatArray:(IOSFloatArray *)yCoefs1
                   withJavaLangFloatArray:(IOSFloatArray *)xCoefs2
                   withJavaLangFloatArray:(IOSFloatArray *)yCoefs2
                   withJavaLangFloatArray:(IOSFloatArray *)params;
+ (void)quadAndCubicNewtonWithJavaLangFloatArray:(IOSFloatArray *)xCoefs1
                          withJavaLangFloatArray:(IOSFloatArray *)yCoefs1
                          withJavaLangFloatArray:(IOSFloatArray *)xCoefs2
                          withJavaLangFloatArray:(IOSFloatArray *)yCoefs2
                          withJavaLangFloatArray:(IOSFloatArray *)params;
+ (void)quadNewtonWithJavaLangFloatArray:(IOSFloatArray *)xCoefs1
                  withJavaLangFloatArray:(IOSFloatArray *)yCoefs1
                  withJavaLangFloatArray:(IOSFloatArray *)xCoefs2
                  withJavaLangFloatArray:(IOSFloatArray *)yCoefs2
                  withJavaLangFloatArray:(IOSFloatArray *)params;
- (id)init;
@end