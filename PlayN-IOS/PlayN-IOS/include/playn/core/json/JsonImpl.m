//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonImpl.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "java/lang/Boolean.h"
#include "java/lang/IllegalArgumentException.h"
#include "playn/core/Json.h"
#include "playn/core/json/JsonArray.h"
#include "playn/core/json/JsonImpl.h"
#include "playn/core/json/JsonObject.h"
#include "playn/core/json/JsonParser.h"
#include "playn/core/json/JsonStringWriter.h"
#include "playn/core/json/JsonTypes.h"

@implementation PlaynCoreJsonJsonImpl

- (id<PlaynCoreJson_Writer>)newWriter OBJC_METHOD_FAMILY_NONE {
  return [[PlaynCoreJsonJsonStringWriter alloc] init];
}

- (id<PlaynCoreJson_Array>)createArray {
  return [[PlaynCoreJsonJsonArray alloc] init];
}

- (id<PlaynCoreJson_Object>)createObject {
  return [[PlaynCoreJsonJsonObject alloc] init];
}

- (BOOL)isArrayWithId:(id)o {
  return [PlaynCoreJsonJsonTypes isArrayWithId:o];
}

- (BOOL)isObjectWithId:(id)o {
  return [PlaynCoreJsonJsonTypes isObjectWithId:o];
}

- (id<PlaynCoreJson_Object>)parseWithNSString:(NSString *)json {
  return [((PlaynCoreJsonJsonParser_JsonParserContext *) nil_chk([PlaynCoreJsonJsonParser object])) fromWithNSString:json];
}

- (id<PlaynCoreJson_Array>)parseArrayWithNSString:(NSString *)json {
  return [((PlaynCoreJsonJsonParser_JsonParserContext *) nil_chk([PlaynCoreJsonJsonParser array])) fromWithNSString:json];
}

+ (void)checkJsonTypeWithId:(id)value {
  if (value == nil || [value isKindOfClass:[NSString class]] || [value conformsToProtocol: @protocol(PlaynCoreJson_Object)] || [value conformsToProtocol: @protocol(PlaynCoreJson_Array)] || [value isKindOfClass:[JavaLangBoolean class]] || [value isKindOfClass:[NSNumber class]]) return;
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid JSON type [value=%@, class=%@]", value, [nil_chk(value) getClass]]];
}

- (id)init {
  return [super init];
}

@end
