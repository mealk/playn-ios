//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FilenameFilter.java
//
//  Created by tball on 6/22/13.
//

@class JavaIoFile;

#import "JreEmulation.h"

@protocol JavaIoFilenameFilter < NSObject >
- (BOOL)acceptWithJavaIoFile:(JavaIoFile *)dir
                withNSString:(NSString *)filename;
@end