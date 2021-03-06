//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/Base90.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "tripleplay/util/Base90.h"

@implementation TripleplayUtilBase90

static NSString * TripleplayUtilBase90_CHARS_ = @"\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}";
static int TripleplayUtilBase90_BASE_;
static unichar TripleplayUtilBase90_FIRST_;

+ (NSString *)CHARS {
  return TripleplayUtilBase90_CHARS_;
}

+ (int)BASE {
  return TripleplayUtilBase90_BASE_;
}

+ (unichar)FIRST {
  return TripleplayUtilBase90_FIRST_;
}

+ (unichar)NEG_MARKER {
  return TripleplayUtilBase90_NEG_MARKER;
}

+ (NSString *)encodeIntWithInt:(int)value {
  JavaLangStringBuilder *buf = [[JavaLangStringBuilder alloc] init];
  if (value < 0) {
    (void) [((JavaLangStringBuilder *) nil_chk(buf)) appendWithUnichar:TripleplayUtilBase90_NEG_MARKER];
    value -= JavaLangInteger_MIN_VALUE;
  }
  do {
    (void) [((JavaLangStringBuilder *) nil_chk(buf)) appendWithUnichar:[((NSString *) nil_chk(TripleplayUtilBase90_CHARS_)) charAtWithInt:value % TripleplayUtilBase90_BASE_]];
    value /= TripleplayUtilBase90_BASE_;
  }
  while (value > 0);
  return [((JavaLangStringBuilder *) nil_chk(buf)) description];
}

+ (int)decodeIntWithNSString:(NSString *)data {
  BOOL neg = NO;
  if ([((NSString *) nil_chk(data)) length] > 0 && [((NSString *) nil_chk(data)) charAtWithInt:0] == TripleplayUtilBase90_NEG_MARKER) {
    neg = YES;
    data = [((NSString *) nil_chk(data)) substring:1];
  }
  int value = 0;
  for (int ii = [((NSString *) nil_chk(data)) length] - 1; ii >= 0; ii--) {
    value *= TripleplayUtilBase90_BASE_;
    value += [((NSString *) nil_chk(data)) charAtWithInt:ii] - TripleplayUtilBase90_FIRST_;
  }
  if (neg) value += JavaLangInteger_MIN_VALUE;
  return value;
}

+ (NSString *)encodeLongWithLongInt:(long long int)value {
  JavaLangStringBuilder *buf = [[JavaLangStringBuilder alloc] init];
  if (value < 0) {
    (void) [((JavaLangStringBuilder *) nil_chk(buf)) appendWithUnichar:TripleplayUtilBase90_NEG_MARKER];
    value -= JavaLangLong_MIN_VALUE;
  }
  while (value > 0) {
    (void) [((JavaLangStringBuilder *) nil_chk(buf)) appendWithUnichar:[((NSString *) nil_chk(TripleplayUtilBase90_CHARS_)) charAtWithInt:(int) (value % TripleplayUtilBase90_BASE_)]];
    value /= TripleplayUtilBase90_BASE_;
  }
  return [((JavaLangStringBuilder *) nil_chk(buf)) description];
}

+ (long long int)decodeLongWithNSString:(NSString *)data {
  BOOL neg = NO;
  if ([((NSString *) nil_chk(data)) length] > 0 && [((NSString *) nil_chk(data)) charAtWithInt:0] == TripleplayUtilBase90_NEG_MARKER) {
    neg = YES;
    data = [((NSString *) nil_chk(data)) substring:1];
  }
  long long int value = 0;
  for (int ii = [((NSString *) nil_chk(data)) length] - 1; ii >= 0; ii--) {
    value *= TripleplayUtilBase90_BASE_;
    value += [((NSString *) nil_chk(data)) charAtWithInt:ii] - TripleplayUtilBase90_FIRST_;
  }
  if (neg) value += JavaLangLong_MIN_VALUE;
  return value;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplayUtilBase90 class]) {
    TripleplayUtilBase90_BASE_ = [((NSString *) nil_chk(TripleplayUtilBase90_CHARS_)) length];
    TripleplayUtilBase90_FIRST_ = [((NSString *) nil_chk(TripleplayUtilBase90_CHARS_)) charAtWithInt:0];
  }
}

@end
