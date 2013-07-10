//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonArray.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSClass;
@class IOSObjectArray;
@class JavaUtilArrayList;
@class PlaynCoreJsonJsonBuilder;
@protocol JavaUtilCollection;
@protocol PlaynCoreJsonJsonSink;
@protocol PlaynCoreJson_Object;
@protocol PlaynCoreJson_TypedArray;

#import "JreEmulation.h"
#import "playn/core/Json.h"

@interface PlaynCoreJsonJsonArray : NSObject < PlaynCoreJson_Array > {
 @public
  JavaUtilArrayList *list_;
}

@property (nonatomic, strong) JavaUtilArrayList *list;

- (id)init;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
+ (PlaynCoreJsonJsonArray *)fromWithNSObjectArray:(IOSObjectArray *)contents;
+ (PlaynCoreJsonJsonBuilder *)builder;
- (void)addWithId:(id)value;
- (void)addWithInt:(int)index
            withId:(id)value;
- (id<PlaynCoreJson_Array>)getArrayWithInt:(int)key;
- (id<PlaynCoreJson_Array>)getArrayWithInt:(int)key
                   withPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)default_;
- (id<PlaynCoreJson_TypedArray>)getArrayWithInt:(int)index
                                   withIOSClass:(IOSClass *)jsonType;
- (BOOL)getBooleanWithInt:(int)key;
- (BOOL)getBooleanWithInt:(int)key
                 withBOOL:(BOOL)default_;
- (double)getDoubleWithInt:(int)key;
- (double)getDoubleWithInt:(int)key
                withDouble:(double)default_;
- (float)getNumberWithInt:(int)key;
- (float)getNumberWithInt:(int)key
                withFloat:(float)default_;
- (int)getIntWithInt:(int)key;
- (int)getIntWithInt:(int)key
             withInt:(int)default_;
- (long long int)getLongWithInt:(int)key;
- (long long int)getLongWithInt:(int)key
                    withLongInt:(long long int)default_;
- (id<PlaynCoreJson_Object>)getObjectWithInt:(int)key;
- (id<PlaynCoreJson_Object>)getObjectWithInt:(int)key
                    withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)default_;
- (NSString *)getStringWithInt:(int)key;
- (NSString *)getStringWithInt:(int)key
                  withNSString:(NSString *)default_;
- (BOOL)isArrayWithInt:(int)key;
- (BOOL)isBooleanWithInt:(int)key;
- (BOOL)isNullWithInt:(int)key;
- (BOOL)isNumberWithInt:(int)key;
- (BOOL)isStringWithInt:(int)key;
- (BOOL)isObjectWithInt:(int)key;
- (int)length;
- (void)removeWithInt:(int)index;
- (void)setWithInt:(int)index
            withId:(id)value;
- (NSString *)description;
- (id<PlaynCoreJsonJsonSink>)writeWithPlaynCoreJsonJsonSink:(id<PlaynCoreJsonJsonSink>)sink;
- (id)getWithInt:(int)key;
@end
