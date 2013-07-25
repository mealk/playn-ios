//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/Frames.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUtilFrames_RESTRICT
#define TripleplayUtilFrames_INCLUDE_ALL 1
#endif
#undef TripleplayUtilFrames_RESTRICT

#if !defined (_TripleplayUtilFrames_) && (TripleplayUtilFrames_INCLUDE_ALL || TripleplayUtilFrames_INCLUDE)
#define _TripleplayUtilFrames_

@protocol PlaynCoreImage;
@protocol PlaynCoreImageLayer;
@protocol PythagorasFIPoint;

@protocol TripleplayUtilFrames < NSObject, JavaObject >
- (float)width;
- (float)height;
- (int)count;
- (id<PlaynCoreImage>)frameWithInt:(int)index;
- (id<PythagorasFIPoint>)offsetWithInt:(int)index;
- (void)applyWithInt:(int)index
withPlaynCoreImageLayer:(id<PlaynCoreImageLayer>)layer;
@end
#endif
