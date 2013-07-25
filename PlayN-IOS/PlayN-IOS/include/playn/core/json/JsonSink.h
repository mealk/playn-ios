//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonSink.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreJsonJsonSink_RESTRICT
#define PlaynCoreJsonJsonSink_INCLUDE_ALL 1
#endif
#undef PlaynCoreJsonJsonSink_RESTRICT

#if !defined (_PlaynCoreJsonJsonSink_) && (PlaynCoreJsonJsonSink_INCLUDE_ALL || PlaynCoreJsonJsonSink_INCLUDE)
#define _PlaynCoreJsonJsonSink_

@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol PlaynCoreJson_Array;
@protocol PlaynCoreJson_Object;

@protocol PlaynCoreJsonJsonSink < NSObject, JavaObject >
- (id)arrayWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (id)arrayWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)c;
- (id)arrayWithNSString:(NSString *)key
 withJavaUtilCollection:(id<JavaUtilCollection>)c;
- (id)arrayWithNSString:(NSString *)key
withPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)c;
- (id)objectWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)objectWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)map;
- (id)objectWithNSString:(NSString *)key
         withJavaUtilMap:(id<JavaUtilMap>)map;
- (id)objectWithNSString:(NSString *)key
withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)map;
- (id)nul;
- (id)nulWithNSString:(NSString *)key;
- (id)valueWithId:(id)o;
- (id)valueWithNSString:(NSString *)key
                 withId:(id)o;
- (id)valueWithNSString:(NSString *)s;
- (id)valueWithBOOL:(BOOL)b;
- (id)valueWithNSNumber:(NSNumber *)n;
- (id)valueWithNSString:(NSString *)key
           withNSString:(NSString *)s;
- (id)valueWithNSString:(NSString *)key
               withBOOL:(BOOL)b;
- (id)valueWithNSString:(NSString *)key
           withNSNumber:(NSNumber *)n;
- (id)array;
- (id)object;
- (id)arrayWithNSString:(NSString *)key;
- (id)objectWithNSString:(NSString *)key;
- (id)end;
@end
#endif
