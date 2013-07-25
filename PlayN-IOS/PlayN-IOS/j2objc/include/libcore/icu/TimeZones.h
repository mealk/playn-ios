//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/icu/TimeZones.java
//
//  Created by tball on 7/9/13.
//

#ifndef _LibcoreIcuTimeZones_H_
#define _LibcoreIcuTimeZones_H_

@class IOSObjectArray;
@class JavaUtilHashMap;
@class JavaUtilLocale;
@class LibcoreIcuTimeZones_ZoneStringsCache;

#import "JreEmulation.h"
#include "java/util/Comparator.h"
#include "libcore/util/BasicLruCache.h"

#define LibcoreIcuTimeZones_LONG_NAME 1
#define LibcoreIcuTimeZones_LONG_NAME_DST 3
#define LibcoreIcuTimeZones_NAME_COUNT 5
#define LibcoreIcuTimeZones_OLSON_NAME 0
#define LibcoreIcuTimeZones_SHORT_NAME 2
#define LibcoreIcuTimeZones_SHORT_NAME_DST 4

@interface LibcoreIcuTimeZones : NSObject {
}

+ (IOSObjectArray *)availableTimeZones;
+ (int)OLSON_NAME;
+ (int)LONG_NAME;
+ (int)SHORT_NAME;
+ (int)LONG_NAME_DST;
+ (int)SHORT_NAME_DST;
+ (int)NAME_COUNT;
+ (LibcoreIcuTimeZones_ZoneStringsCache *)cachedZoneStrings;
+ (id<JavaUtilComparator>)ZONE_STRINGS_COMPARATOR;
- (id)init;
+ (NSString *)getDisplayNameWithNSStringArray2:(IOSObjectArray *)zoneStrings
                                  withNSString:(NSString *)id_
                                      withBOOL:(BOOL)daylight
                                       withInt:(int)style;
+ (IOSObjectArray *)getZoneStringsWithJavaUtilLocale:(JavaUtilLocale *)locale;
@end

@interface LibcoreIcuTimeZones_ZoneStringsCache : LibcoreUtilBasicLruCache {
 @public
  JavaUtilHashMap *internTable_;
}

@property (nonatomic, retain) JavaUtilHashMap *internTable;

- (id)init;
- (void)internStringsWithNSStringArray2:(IOSObjectArray *)result;
@end

@interface LibcoreIcuTimeZones_$1 : NSObject < JavaUtilComparator > {
}

- (int)compareWithId:(IOSObjectArray *)lhs
              withId:(IOSObjectArray *)rhs;
- (id)init;
@end

#endif // _LibcoreIcuTimeZones_H_
