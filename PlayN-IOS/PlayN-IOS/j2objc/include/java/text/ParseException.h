//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/text/ParseException.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaTextParseException_H_
#define _JavaTextParseException_H_

#import "JreEmulation.h"
#include "java/lang/Exception.h"

#define JavaTextParseException_serialVersionUID 2703218443322787634

@interface JavaTextParseException : JavaLangException {
 @public
  int errorOffset_;
}

@property (nonatomic, assign) int errorOffset;

- (id)initWithNSString:(NSString *)detailMessage
               withInt:(int)location;
- (int)getErrorOffset;
@end

#endif // _JavaTextParseException_H_
