//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Json.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSClass;
@class IOSObjectArray;
@protocol JavaUtilIterator;
@protocol PlaynCoreJson_Array;
@protocol PlaynCoreJson_Object;
@protocol PlaynCoreJson_TypedArray;
@protocol PlaynCoreJson_Writer;

#import "JreEmulation.h"
#import "JsonSink.h"
#import "java/lang/Iterable.h"

@protocol PlaynCoreJson < NSObject >
- (id<PlaynCoreJson_Array>)createArray;
- (id<PlaynCoreJson_Object>)createObject;
- (BOOL)isArrayWithId:(id)o;
- (BOOL)isObjectWithId:(id)o;
- (id<PlaynCoreJson_Writer>)newWriter OBJC_METHOD_FAMILY_NONE;
- (id<PlaynCoreJson_Object>)parseWithNSString:(NSString *)json;
- (id<PlaynCoreJson_Array>)parseArrayWithNSString:(NSString *)json;
@end

@protocol PlaynCoreJson_Writer < PlaynCoreJsonJsonSink, NSObject >
- (NSString *)write;
- (id<PlaynCoreJson_Writer>)useVerboseFormatWithBOOL:(BOOL)verbose;
@end

@interface PlaynCoreJson_TypedArray_Util : NSObject {
}

+ (id<PlaynCoreJson_TypedArray>)createWithJavaLangBooleanArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)createWithJavaLangIntegerArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)createWithJavaLangFloatArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)createWithJavaLangDoubleArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)createWithNSStringArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)createWithPlaynCoreJson_ObjectArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)createWithPlaynCoreJson_ArrayArray:(IOSObjectArray *)data;
+ (id<PlaynCoreJson_TypedArray>)toArrayWithNSObjectArray:(IOSObjectArray *)data;
- (id)init;
@end

@protocol PlaynCoreJson_TypedArray < JavaLangIterable, NSObject >
- (int)length;
- (id)getWithInt:(int)index;
- (id)getWithInt:(int)index
          withId:(id)dflt;
- (id<JavaUtilIterator>)iterator;
@end

@interface PlaynCoreJson_TypedArray_Util_$1 : NSObject < PlaynCoreJson_TypedArray > {
 @public
  IOSObjectArray *val$data_;
}

@property (nonatomic, retain) IOSObjectArray *val$data;

- (int)length;
- (id)getWithInt:(int)index;
- (id)getWithInt:(int)index
          withId:(id)dflt;
- (id<JavaUtilIterator>)iterator;
- (id)initWithNSObjectArray:(IOSObjectArray *)capture$0;
@end

@protocol PlaynCoreJson_Array < NSObject >
- (int)length;
- (BOOL)getBooleanWithInt:(int)index;
- (BOOL)getBooleanWithInt:(int)index
                 withBOOL:(BOOL)dflt;
- (float)getNumberWithInt:(int)index;
- (float)getNumberWithInt:(int)index
                withFloat:(float)dflt;
- (double)getDoubleWithInt:(int)index;
- (double)getDoubleWithInt:(int)index
                withDouble:(double)dflt;
- (int)getIntWithInt:(int)index;
- (int)getIntWithInt:(int)index
             withInt:(int)dflt;
- (long long int)getLongWithInt:(int)index;
- (long long int)getLongWithInt:(int)index
                    withLongInt:(long long int)dflt;
- (NSString *)getStringWithInt:(int)index;
- (NSString *)getStringWithInt:(int)index
                  withNSString:(NSString *)dflt;
- (id<PlaynCoreJson_Object>)getObjectWithInt:(int)index;
- (id<PlaynCoreJson_Object>)getObjectWithInt:(int)index
                    withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)dflt;
- (id<PlaynCoreJson_Array>)getArrayWithInt:(int)index;
- (id<PlaynCoreJson_Array>)getArrayWithInt:(int)index
                   withPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)dflt;
- (id<PlaynCoreJson_TypedArray>)getArrayWithInt:(int)index
                                   withIOSClass:(IOSClass *)jsonType;
- (BOOL)isArrayWithInt:(int)index;
- (BOOL)isBooleanWithInt:(int)index;
- (BOOL)isNullWithInt:(int)index;
- (BOOL)isNumberWithInt:(int)index;
- (BOOL)isStringWithInt:(int)index;
- (BOOL)isObjectWithInt:(int)index;
- (void)addWithId:(id)value;
- (void)addWithInt:(int)index
            withId:(id)value;
- (void)removeWithInt:(int)index;
- (void)setWithInt:(int)index
            withId:(id)value;
- (id<PlaynCoreJsonJsonSink>)writeWithPlaynCoreJsonJsonSink:(id<PlaynCoreJsonJsonSink>)sink;
@end

@protocol PlaynCoreJson_Object < NSObject >
- (BOOL)getBooleanWithNSString:(NSString *)key;
- (BOOL)getBooleanWithNSString:(NSString *)key
                      withBOOL:(BOOL)dflt;
- (float)getNumberWithNSString:(NSString *)key;
- (float)getNumberWithNSString:(NSString *)key
                     withFloat:(float)dflt;
- (double)getDoubleWithNSString:(NSString *)key;
- (double)getDoubleWithNSString:(NSString *)key
                     withDouble:(double)dflt;
- (int)getIntWithNSString:(NSString *)key;
- (int)getIntWithNSString:(NSString *)key
                  withInt:(int)dflt;
- (long long int)getLongWithNSString:(NSString *)key;
- (long long int)getLongWithNSString:(NSString *)key
                         withLongInt:(long long int)dflt;
- (NSString *)getStringWithNSString:(NSString *)key;
- (NSString *)getStringWithNSString:(NSString *)key
                       withNSString:(NSString *)dflt;
- (id<PlaynCoreJson_Object>)getObjectWithNSString:(NSString *)key;
- (id<PlaynCoreJson_Object>)getObjectWithNSString:(NSString *)key
                         withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)dflt;
- (id<PlaynCoreJson_Array>)getArrayWithNSString:(NSString *)key;
- (id<PlaynCoreJson_Array>)getArrayWithNSString:(NSString *)key
                        withPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)dflt;
- (id<PlaynCoreJson_TypedArray>)getArrayWithNSString:(NSString *)key
                                        withIOSClass:(IOSClass *)jsonType;
- (id<PlaynCoreJson_TypedArray>)getArrayWithNSString:(NSString *)key
                                        withIOSClass:(IOSClass *)jsonType
                        withPlaynCoreJson_TypedArray:(id<PlaynCoreJson_TypedArray>)dflt;
- (BOOL)containsKeyWithNSString:(NSString *)key;
- (id<PlaynCoreJson_TypedArray>)keys;
- (BOOL)isArrayWithNSString:(NSString *)key;
- (BOOL)isBooleanWithNSString:(NSString *)key;
- (BOOL)isNullWithNSString:(NSString *)key;
- (BOOL)isNumberWithNSString:(NSString *)key;
- (BOOL)isStringWithNSString:(NSString *)key;
- (BOOL)isObjectWithNSString:(NSString *)key;
- (void)putWithNSString:(NSString *)key
                 withId:(id)value;
- (void)removeWithNSString:(NSString *)key;
- (id<PlaynCoreJsonJsonSink>)writeWithPlaynCoreJsonJsonSink:(id<PlaynCoreJsonJsonSink>)sink;
@end
