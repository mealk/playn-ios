//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Asserts.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/AssertionError.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/Integer.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "Asserts.h"

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
    @throw [[[JavaLangAssertionError alloc] init] autorelease];
  }
}

+ (void)checkWithBOOL:(BOOL)expression
               withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangAssertionError alloc] initWithId:[NSString valueOf:errorMessage]] autorelease];
  }
}

+ (void)checkWithBOOL:(BOOL)expression
         withNSString:(NSString *)errorMessageTemplate
    withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangAssertionError alloc] initWithId:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]] autorelease];
  }
}

+ (void)checkArgumentWithBOOL:(BOOL)expression {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
}

+ (void)checkArgumentWithBOOL:(BOOL)expression
                       withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString valueOf:errorMessage]] autorelease];
  }
}

+ (void)checkArgumentWithBOOL:(BOOL)expression
                 withNSString:(NSString *)errorMessageTemplate
            withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]] autorelease];
  }
}

+ (void)checkStateWithBOOL:(BOOL)expression {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
}

+ (void)checkStateWithBOOL:(BOOL)expression
                    withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:[NSString valueOf:errorMessage]] autorelease];
  }
}

+ (void)checkStateWithBOOL:(BOOL)expression
              withNSString:(NSString *)errorMessageTemplate
         withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && !expression) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]] autorelease];
  }
}

+ (id)checkNotNullWithId:(id)reference {
  if (PlaynCoreAsserts_assertsEnabled_ && reference == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  return reference;
}

+ (id)checkNotNullWithId:(id)reference
                  withId:(id)errorMessage {
  if (PlaynCoreAsserts_assertsEnabled_ && reference == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:[NSString valueOf:errorMessage]] autorelease];
  }
  return reference;
}

+ (id)checkNotNullWithId:(id)reference
            withNSString:(NSString *)errorMessageTemplate
       withNSObjectArray:(IOSObjectArray *)errorMessageArgs {
  if (PlaynCoreAsserts_assertsEnabled_ && reference == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:[PlaynCoreAsserts formatWithNSString:errorMessageTemplate withNSObjectArray:errorMessageArgs]] autorelease];
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
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[PlaynCoreAsserts badElementIndexWithInt:index withInt:size withNSString:desc]] autorelease];
  }
  return index;
}

+ (NSString *)badElementIndexWithInt:(int)index
                             withInt:(int)size
                        withNSString:(NSString *)desc {
  if (index < 0) {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must not be negative" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:2, desc, [JavaLangInteger valueOfWithInt:index] ]];
  }
  else if (size < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"negative size: %d", size]] autorelease];
  }
  else {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must be less than size (%s)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:3, desc, [JavaLangInteger valueOfWithInt:index], [JavaLangInteger valueOfWithInt:size] ]];
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
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[PlaynCoreAsserts badPositionIndexWithInt:index withInt:size withNSString:desc]] autorelease];
  }
  return index;
}

+ (NSString *)badPositionIndexWithInt:(int)index
                              withInt:(int)size
                         withNSString:(NSString *)desc {
  if (index < 0) {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must not be negative" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:2, desc, [JavaLangInteger valueOfWithInt:index] ]];
  }
  else if (size < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"negative size: %d", size]] autorelease];
  }
  else {
    return [PlaynCoreAsserts formatWithNSString:@"%s (%s) must not be greater than size (%s)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:3, desc, [JavaLangInteger valueOfWithInt:index], [JavaLangInteger valueOfWithInt:size] ]];
  }
}

+ (void)checkPositionIndexesWithInt:(int)start
                            withInt:(int)end
                            withInt:(int)size {
  if (PlaynCoreAsserts_assertsEnabled_ && (start < 0 || end < start || end > size)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[PlaynCoreAsserts badPositionIndexesWithInt:start withInt:end withInt:size]] autorelease];
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
  return [PlaynCoreAsserts formatWithNSString:@"end index (%s) must not be less than start index (%s)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:2, [JavaLangInteger valueOfWithInt:end], [JavaLangInteger valueOfWithInt:start] ]];
}

+ (NSString *)formatWithNSString:(NSString *)template_
               withNSObjectArray:(IOSObjectArray *)args {
  template_ = [NSString valueOf:template_];
  JavaLangStringBuilder *builder = [[[JavaLangStringBuilder alloc] initWithInt:[NIL_CHK(template_) length] + 16 * (int) [((IOSObjectArray *) NIL_CHK(args)) count]] autorelease];
  int templateStart = 0;
  int i = 0;
  while (i < (int) [((IOSObjectArray *) NIL_CHK(args)) count]) {
    int placeholderStart = [NIL_CHK(template_) indexOfString:@"%s" fromIndex:templateStart];
    if (placeholderStart == -1) {
      break;
    }
    (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:[NIL_CHK(template_) substring:templateStart endIndex:placeholderStart]];
    (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithId:[((IOSObjectArray *) NIL_CHK(args)) objectAtIndex:i++]];
    templateStart = placeholderStart + 2;
  }
  (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:[NIL_CHK(template_) substring:templateStart]];
  if (i < (int) [((IOSObjectArray *) NIL_CHK(args)) count]) {
    (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:@" ["];
    (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithId:[((IOSObjectArray *) NIL_CHK(args)) objectAtIndex:i++]];
    while (i < (int) [((IOSObjectArray *) NIL_CHK(args)) count]) {
      (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:@", "];
      (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithId:[((IOSObjectArray *) NIL_CHK(args)) objectAtIndex:i++]];
    }
    (void) [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithUnichar:']'];
  }
  return [((JavaLangStringBuilder *) NIL_CHK(builder)) description];
}

+ (void)initialize {
  if (self == [PlaynCoreAsserts class]) {
    PlaynCoreAsserts_assertsEnabled_ = [[IOSClass classWithClass:[PlaynCoreAsserts class]] desiredAssertionStatus];
  }
}

- (void)dealloc {
  [super dealloc];
}

@end
