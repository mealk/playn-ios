//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/utils/Debug.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Exception.h"
#import "java/lang/StackTraceElement.h"
#import "playn/core/Log.h"
#import "playn/core/PlayN.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/utils/Debug.h"
#import "tuxkids/tuxblocks/core/utils/Formatter.h"

@implementation TuxkidsTuxblocksCoreUtilsDebug

static BOOL TuxkidsTuxblocksCoreUtilsDebug_DEBUG__;
static BOOL TuxkidsTuxblocksCoreUtilsDebug_SHOW_TRACE_;

+ (BOOL)getDEBUG {
  return TuxkidsTuxblocksCoreUtilsDebug_DEBUG__;
}

+ (BOOL *)getDEBUGRef {
  return &TuxkidsTuxblocksCoreUtilsDebug_DEBUG__;
}

+ (BOOL)SHOW_TRACE {
  return TuxkidsTuxblocksCoreUtilsDebug_SHOW_TRACE_;
}

+ (BOOL *)SHOW_TRACERef {
  return &TuxkidsTuxblocksCoreUtilsDebug_SHOW_TRACE_;
}

+ (void)writeWithLongInt:(long long int)x {
  [TuxkidsTuxblocksCoreUtilsDebug writeWithNSString:[NSString stringWithFormat:@"%qi", x]];
}

+ (void)writeWithInt:(int)x {
  [TuxkidsTuxblocksCoreUtilsDebug writeWithNSString:[NSString stringWithFormat:@"%d", x]];
}

+ (void)writeWithId:(id)o {
  [TuxkidsTuxblocksCoreUtilsDebug writeWithNSString:o == nil ? @"null" : [NIL_CHK(o) description]];
}

+ (void)writeWithFloat:(float)x {
  [TuxkidsTuxblocksCoreUtilsDebug writeWithNSString:[NSString stringWithFormat:@"%f", x]];
}

+ (void)writeWithNSString:(NSString *)format
        withNSObjectArray:(IOSObjectArray *)args {
  @try {
    [TuxkidsTuxblocksCoreUtilsDebug writeWithNSString:[TuxkidsTuxblocksCoreUtilsFormatter formatWithNSString:format withNSObjectArray:args]];
  }
  @catch (JavaLangException *e) {
    [TuxkidsTuxblocksCoreUtilsDebug writeWithJavaLangException:e];
  }
}

+ (void)writeWithJavaLangException:(JavaLangException *)e {
  if (TuxkidsTuxblocksCoreUtilsDebug_DEBUG__) [((JavaLangException *) NIL_CHK(e)) printStackTrace];
}

+ (void)writeWithNSString:(NSString *)text {
  if (!TuxkidsTuxblocksCoreUtilsDebug_DEBUG__) return;
  if (TuxkidsTuxblocksCoreUtilsDebug_SHOW_TRACE_) {
    @try {
      @throw [[JavaLangException alloc] initWithNSString:@"Who called me?"];
    }
    @catch (JavaLangException *e) {
      int i = 1;
      while ([[((JavaLangStackTraceElement *) [[((JavaLangException *) NIL_CHK(e)) getStackTrace] objectAtIndex:i]) getClassName] isEqual:[[IOSClass classWithClass:[TuxkidsTuxblocksCoreUtilsDebug class]] getName]] && [[((JavaLangStackTraceElement *) [[((JavaLangException *) NIL_CHK(e)) getStackTrace] objectAtIndex:i]) getMethodName] isEqual:@"write"]) i++;
      while ([[((JavaLangStackTraceElement *) [[((JavaLangException *) NIL_CHK(e)) getStackTrace] objectAtIndex:i]) getClassName] isEqual:[[IOSClass classWithClass:[TuxkidsTuxblocksCorePlayNObject class]] getName]] && [[((JavaLangStackTraceElement *) [[((JavaLangException *) NIL_CHK(e)) getStackTrace] objectAtIndex:i]) getMethodName] isEqual:@"debug"]) i++;
      NSString *cName = [((JavaLangStackTraceElement *) [[((JavaLangException *) NIL_CHK(e)) getStackTrace] objectAtIndex:i]) getClassName];
      int index = [NIL_CHK(cName) lastIndexOfString:@"."];
      if (index > 0 && index < [NIL_CHK(cName) length] - 1) cName = [NIL_CHK(cName) substring:index + 1];
      text = [NSString stringWithFormat:@"%@.%@(): %@", cName, [((JavaLangStackTraceElement *) [[((JavaLangException *) NIL_CHK(e)) getStackTrace] objectAtIndex:i]) getMethodName], text];
    }
  }
  [((id<PlaynCoreLog>) [PlaynCorePlayN log]) debugWithNSString:text];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TuxkidsTuxblocksCoreUtilsDebug class]) {
    TuxkidsTuxblocksCoreUtilsDebug_DEBUG__ = YES;
    TuxkidsTuxblocksCoreUtilsDebug_SHOW_TRACE_ = NO;
  }
}

@end
