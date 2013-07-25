//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Storage.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreStorage_RESTRICT
#define PlaynCoreStorage_INCLUDE_ALL 1
#endif
#undef PlaynCoreStorage_RESTRICT

#if !defined (_PlaynCoreStorage_) && (PlaynCoreStorage_INCLUDE_ALL || PlaynCoreStorage_INCLUDE)
#define _PlaynCoreStorage_

@protocol JavaLangIterable;
@protocol PlaynCoreStorage_Batch;

@protocol PlaynCoreStorage < NSObject, JavaObject >
- (void)setItemWithNSString:(NSString *)key
               withNSString:(NSString *)data;
- (void)removeItemWithNSString:(NSString *)key;
- (NSString *)getItemWithNSString:(NSString *)key;
- (id<PlaynCoreStorage_Batch>)startBatch;
- (id<JavaLangIterable>)keys;
- (BOOL)isPersisted;
@end
#endif

#if !defined (_PlaynCoreStorage_Batch_) && (PlaynCoreStorage_INCLUDE_ALL || PlaynCoreStorage_Batch_INCLUDE)
#define _PlaynCoreStorage_Batch_

@protocol PlaynCoreStorage_Batch < NSObject, JavaObject >
- (void)setItemWithNSString:(NSString *)key
               withNSString:(NSString *)data;
- (void)removeItemWithNSString:(NSString *)key;
- (void)commit;
@end
#endif
