//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Asserts.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/AssertionError.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "playn/core/Asserts.h"

@implementation PlaynCoreAsserts

static BOOL PlaynCoreAsserts_assertsEnabled_;

+ (BOOL)assertsEnabled {
  return PlaynCoreAsserts_assertsEnabled_;
}

- (id)init {
  return [super init];
}

+ (void)checkWithBOOL:(BOOL)expression {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangAssertionError alloc] init];
  }
}

+ (void)checkWithBOOL:(BOOL)expression
               withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangAssertionError alloc] initWithId:[NSString valueOf:errorMessage]];
  }
}

+ (void)checkWithBOOL:(BOOL)expression
         withNSString:(NSString *)errorMessageTemplate
    withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangAssertionError alloc] initWithId:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]];
  }
}

+ (void)checkArgumentWithBOOL:(BOOL)expression {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangIllegalArgumentException alloc] init];
  }
}

+ (void)checkArgumentWithBOOL:(BOOL)expression
                       withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString valueOf:errorMessage]];
  }
}

+ (void)checkArgumentWithBOOL:(BOOL)expression
                 withNSString:(NSString *)errorMessageTemplate
            withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]];
  }
}

+ (void)checkStateWithBOOL:(BOOL)expression {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangIllegalStateException alloc] init];
  }
}

+ (void)checkStateWithBOOL:(BOOL)expression
                    withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[NSString valueOf:errorMessage]];
  }
}

+ (void)checkStateWithBOOL:(BOOL)expression
              withNSString:(NSString *)errorMessageTemplate
         withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]];
  }
}

+ (id)checkNotNullWithId:(id)reference {
  if (PlaynCoreAsserts_assertsEnabled_ && reference == nil) {
    @throw [[JavaLangNullPointerException alloc] init];
  }
  return reference;
}

+ (id)checkNotNullWithId:(id)reference
                  withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && reference == nil) {
    @throw [[JavaLangNullPointerException alloc] initWithNSString:[NSString valueOf:errorMessage]];
  }
  return reference;
}

+ (id)checkNotNullWithId:(id)reference
            withNSString:(NSString *)errorMessageTemplate
       withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && reference == nil) {
    @throw [[JavaLangNullPointerException alloc] initWithNSString:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]];
  }
  return reference;
}

+ (int)checkElementIndexWithInt:(int)index
                        withInt:(int)size {
  return [PlaynCoreAsserts checkElementIndexWithInt:index withInt:size withNSString:@"index"];
}

+ (int)checkElementIndexWithInt:(int)index
                        withInt:(int)size
                   withNSString:(NSString *)desc {
  if (PlaynCoreAsserts_assertsEnabled_ && (index < 0 || index >= size)) {
    @throw [[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[PlaynCoreAsserts badElementIndexWithInt:index withInt:size withNSString:desc]];
  }
  return index;
}

+ (NSString *)badElementIndexWithInt:(int)index
                             withInt:(int)size
                        withNSString:(NSString *)desc {
  if (index < 0) {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must not be negative" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ desc, [JavaLangInteger valueOfWithInt:index] } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
  }
  else if (size < 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"negative size: %d", size]];
  }
  else {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must be less than size (%s)" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ desc, [JavaLangInteger valueOfWithInt:index], [JavaLangInteger valueOfWithInt:size] } count:3 type:[IOSClass classWithClass:[NSObject class]]]];
  }
}

+ (int)checkPositionIndexWithInt:(int)index
                         withInt:(int)size {
  return [PlaynCoreAsserts checkPositionIndexWithInt:index withInt:size withNSString:@"index"];
}

+ (int)checkPositionIndexWithInt:(int)index
                         withInt:(int)size
                    withNSString:(NSString *)desc {
  if (PlaynCoreAsserts_assertsEnabled_ && (index < 0 || index > size)) {
    @throw [[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[PlaynCoreAsserts badPositionIndexWithInt:index withInt:size withNSString:desc]];
  }
  return index;
}

+ (NSString *)badPositionIndexWithInt:(int)index
                              withInt:(int)size
                         withNSString:(NSString *)desc {
  if (index < 0) {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must not be negative" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ desc, [JavaLangInteger valueOfWithInt:index] } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
  }
  else if (size < 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"negative size: %d", size]];
  }
  else {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must not be greater than size (%s)" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ desc, [JavaLangInteger valueOfWithInt:index], [JavaLangInteger valueOfWithInt:size] } count:3 type:[IOSClass classWithClass:[NSObject class]]]];
  }
}

+ (void)checkPositionIndexesWithInt:(int)start
                            withInt:(int)end
                            withInt:(int)size {
  if (PlaynCoreAsserts_assertsEnabled_ && (start < 0 || end < start || end > size)) {
    @throw [[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[PlaynCoreAsserts badPositionIndexesWithInt:start withInt:end withInt:size]];
  }
}

+ (NSString *)badPositionIndexesWithInt:(int)start
                                withInt:(int)end
                                withInt:(int)size {
  if (start < 0 || start > size) {
    return [PlaynCoreAsserts badPositionIndexWithInt:start withInt:size withNSString:@"start index"];
  }
  if (end < 0 || end > size) {
    return [PlaynCoreAsserts badPositionIndexWithInt:end withInt:size withNSString:@"end index"];
  }
  return [PlaynCoreAsserts formatWithNSString:@"end index (%s) must not be less than start index (%s)" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [JavaLangInteger valueOfWithInt:end], [JavaLangInteger valueOfWithInt:start] } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
}

+ (NSString *)formatWithNSString:(NSString *)template_
               withNSObjectArray:(IOSObjectArray *)args {
  template_ = [NSString valueOf:template_];
  JavaLangStringBuilder *builder = [[JavaLangStringBuilder alloc] initWithInt:[((NSString *) nil_chk(template_)) length] + 16 * (int) [((IOSObjectArray *) nil_chk(args)) count]];
  int templateStart = 0;
  int i = 0;
  while (i < (int) [((IOSObjectArray *) nil_chk(args)) count]) {
    int placeholderStart = [((NSString *) nil_chk(template_)) indexOfString:@"%s" fromIndex:templateStart];
    if (placeholderStart == -1) {
      break;
    }
    (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithNSString:[((NSString *) nil_chk(template_)) substring:templateStart endIndex:placeholderStart]];
    (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithId:[((IOSObjectArray *) nil_chk(args)) objectAtIndex:i++]];
    templateStart = placeholderStart + 2;
  }
  (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithNSString:[((NSString *) nil_chk(template_)) substring:templateStart]];
  if (i < (int) [((IOSObjectArray *) nil_chk(args)) count]) {
    (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithNSString:@" ["];
    (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithId:[((IOSObjectArray *) nil_chk(args)) objectAtIndex:i++]];
    while (i < (int) [((IOSObjectArray *) nil_chk(args)) count]) {
      (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithNSString:@", "];
      (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithId:[((IOSObjectArray *) nil_chk(args)) objectAtIndex:i++]];
    }
    (void) [((JavaLangStringBuilder *) nil_chk(builder)) appendWithUnichar:']'];
  }
  return [((JavaLangStringBuilder *) nil_chk(builder)) description];
}

+ (void)initialize {
  if (self == [PlaynCoreAsserts class]) {
    PlaynCoreAsserts_assertsEnabled_ = [[IOSClass classWithClass:[PlaynCoreAsserts class]] desiredAssertionStatus];
  }
}

@end
