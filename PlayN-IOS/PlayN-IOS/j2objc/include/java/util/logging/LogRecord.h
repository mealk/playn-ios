//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/LogRecord.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilLoggingLogRecord_H_
#define _JavaUtilLoggingLogRecord_H_

@class JavaLangThrowable;
@class JavaUtilLoggingLevel;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface JavaUtilLoggingLogRecord : NSObject < JavaIoSerializable > {
 @public
  JavaUtilLoggingLevel *level_;
  NSString *loggerName_;
  NSString *msg_;
  JavaLangThrowable *thrown_;
  long long int millis_;
}

@property (nonatomic, retain) JavaUtilLoggingLevel *level;
@property (nonatomic, copy) NSString *loggerName;
@property (nonatomic, copy) NSString *msg;
@property (nonatomic, retain) JavaLangThrowable *thrown;
@property (nonatomic, assign) long long int millis;

- (id)initWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)level
                      withNSString:(NSString *)msg;
- (id)init;
- (JavaUtilLoggingLevel *)getLevel;
- (NSString *)getLoggerName;
- (NSString *)getMessage;
- (long long int)getMillis;
- (JavaLangThrowable *)getThrown;
- (void)setLevelWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)newLevel;
- (void)setLoggerNameWithNSString:(NSString *)newName;
- (void)setMessageWithNSString:(NSString *)newMessage;
- (void)setMillisWithLongInt:(long long int)newMillis;
- (void)setThrownWithJavaLangThrowable:(JavaLangThrowable *)newThrown;
@end

#endif // _JavaUtilLoggingLogRecord_H_
