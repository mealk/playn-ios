//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/UnsupportedOperationException.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaLangUnsupportedOperationException_H_
#define _JavaLangUnsupportedOperationException_H_

@class JavaLangThrowable;

#import "JreEmulation.h"
#include "java/lang/RuntimeException.h"

#define JavaLangUnsupportedOperationException_serialVersionUID -1242599979055084673

@interface JavaLangUnsupportedOperationException : JavaLangRuntimeException {
}

- (id)init;
- (id)initWithNSString:(NSString *)detailMessage;
- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause;
@end

#endif // _JavaLangUnsupportedOperationException_H_
