//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/Points.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasIPoints_RESTRICT
#define PythagorasIPoints_INCLUDE_ALL 1
#endif
#undef PythagorasIPoints_RESTRICT

#if !defined (_PythagorasIPoints_) && (PythagorasIPoints_INCLUDE_ALL || PythagorasIPoints_INCLUDE)
#define _PythagorasIPoints_

@interface PythagorasIPoints : NSObject {
}

+ (int)distanceSqWithInt:(int)x1
                 withInt:(int)y1
                 withInt:(int)x2
                 withInt:(int)y2;
+ (int)distanceWithInt:(int)x1
               withInt:(int)y1
               withInt:(int)x2
               withInt:(int)y2;
+ (int)manhattanDistanceWithInt:(int)x1
                        withInt:(int)y1
                        withInt:(int)x2
                        withInt:(int)y2;
+ (NSString *)pointToStringWithInt:(int)x
                           withInt:(int)y;
- (id)init;
@end
#endif
