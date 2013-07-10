//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/CrossingHelper.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class IOSIntArray;
@class IOSObjectArray;
@class PythagorasDCrossingHelper_Edge;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface PythagorasDCrossingHelper : NSObject {
 @public
  IOSObjectArray *coords_;
  IOSIntArray *sizes_;
  id<JavaUtilList> isectPoints_;
}

@property (nonatomic, strong) IOSObjectArray *coords;
@property (nonatomic, strong) IOSIntArray *sizes;
@property (nonatomic, strong) id<JavaUtilList> isectPoints;

- (id)initWithJavaLangDoubleArray:(IOSObjectArray *)coords
         withJavaLangIntegerArray:(IOSIntArray *)sizes;
- (IOSObjectArray *)findCrossing;
- (BOOL)removeEdgeWithJavaUtilList:(id<JavaUtilList>)edges
                           withInt:(int)begIndex
                           withInt:(int)endIndex;
- (void)intersectShapeWithJavaUtilList:(id<JavaUtilList>)edges
               withJavaLangDoubleArray:(IOSDoubleArray *)coords1
                               withInt:(int)length1
               withJavaLangDoubleArray:(IOSDoubleArray *)coords2
                               withInt:(int)length2
    withPythagorasDCrossingHelper_Edge:(PythagorasDCrossingHelper_Edge *)initEdge;
+ (void)sortWithJavaLangDoubleArray:(IOSDoubleArray *)coords1
                            withInt:(int)length1
            withJavaLangDoubleArray:(IOSDoubleArray *)coords2
                            withInt:(int)length2
           withJavaLangIntegerArray:(IOSIntArray *)array;
- (BOOL)containsPointWithJavaLangDoubleArray:(IOSDoubleArray *)point;
+ (int)compareWithDouble:(double)x1
              withDouble:(double)y1
              withDouble:(double)x2
              withDouble:(double)y2;
@end

@interface PythagorasDCrossingHelper_Edge : NSObject {
 @public
  int begIndex_;
  int endIndex_;
  int areaNumber_;
}

@property (nonatomic, assign) int begIndex;
@property (nonatomic, assign) int endIndex;
@property (nonatomic, assign) int areaNumber;

- (id)initWithInt:(int)begIndex
          withInt:(int)endIndex
          withInt:(int)areaNumber;
- (BOOL)reverseCompareWithInt:(int)begIndex
                      withInt:(int)endIndex;
@end
