//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/RegularExpression.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreRegularExpression_RESTRICT
#define PlaynCoreRegularExpression_INCLUDE_ALL 1
#endif
#undef PlaynCoreRegularExpression_RESTRICT

#if !defined (_PlaynCoreRegularExpression_) && (PlaynCoreRegularExpression_INCLUDE_ALL || PlaynCoreRegularExpression_INCLUDE)
#define _PlaynCoreRegularExpression_

@protocol PlaynCoreRegularExpression < NSObject, JavaObject >
- (BOOL)matchesWithNSString:(NSString *)regexp
               withNSString:(NSString *)source;
@end
#endif
