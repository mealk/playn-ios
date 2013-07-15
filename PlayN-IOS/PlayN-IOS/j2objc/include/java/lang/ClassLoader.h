//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/lang/ClassLoader.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaLangClassLoader_H_
#define _JavaLangClassLoader_H_

@class IOSClass;
@class JavaIoInputStream;

#import "JreEmulation.h"

@interface JavaLangClassLoader : NSObject {
 @public
  JavaLangClassLoader *parent_;
}

@property (nonatomic, retain) JavaLangClassLoader *parent;

+ (JavaLangClassLoader *)systemLoader;
- (id)initWithJavaLangClassLoader:(JavaLangClassLoader *)parent;
- (id)init;
- (void)clearAssertionStatus;
+ (JavaLangClassLoader *)getSystemClassLoader;
+ (JavaIoInputStream *)getSystemResourceAsStreamWithNSString:(NSString *)name;
- (IOSClass *)loadClassWithNSString:(NSString *)name;
- (IOSClass *)loadClassWithNSString:(NSString *)name
                           withBOOL:(BOOL)resolve;
- (JavaIoInputStream *)getResourceAsStreamWithNSString:(NSString *)name;
- (IOSClass *)findClassWithNSString:(NSString *)name;
- (void)resolveClassWithIOSClass:(IOSClass *)c;
- (IOSClass *)findSystemClassWithNSString:(NSString *)name;
- (IOSClass *)findLoadedClassWithNSString:(NSString *)name;
- (JavaLangClassLoader *)getParent;
- (void)setDefaultAssertionStatusWithBOOL:(BOOL)b;
- (void)setPackageAssertionStatusWithNSString:(NSString *)name
                                     withBOOL:(BOOL)enabled;
- (void)setClassAssertionStatusWithNSString:(NSString *)name
                                   withBOOL:(BOOL)enabled;
@end

#endif // _JavaLangClassLoader_H_
