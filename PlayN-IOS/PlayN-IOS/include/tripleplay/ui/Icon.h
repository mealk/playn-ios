//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Icon.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiIcon_RESTRICT
#define TripleplayUiIcon_INCLUDE_ALL 1
#endif
#undef TripleplayUiIcon_RESTRICT

#if !defined (_TripleplayUiIcon_) && (TripleplayUiIcon_INCLUDE_ALL || TripleplayUiIcon_INCLUDE)
#define _TripleplayUiIcon_

@protocol PlaynCoreLayer;
@protocol PlaynCoreUtilCallback;

@protocol TripleplayUiIcon < NSObject, JavaObject >
- (float)width;
- (float)height;
- (id<PlaynCoreLayer>)render;
- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end
#endif
