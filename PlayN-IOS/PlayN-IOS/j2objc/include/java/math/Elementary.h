//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Elementary.java
//
//  Created by tball on 6/22/13.
//

@class IOSIntArray;
@class JavaMathBigInteger;

#import "JreEmulation.h"

@interface JavaMathElementary : NSObject {
}

- (id)init;
+ (int)compareArraysWithJavaLangIntegerArray:(IOSIntArray *)a
                    withJavaLangIntegerArray:(IOSIntArray *)b
                                     withInt:(int)size;
+ (JavaMathBigInteger *)addWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                           withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (void)addWithJavaLangIntegerArray:(IOSIntArray *)res
           withJavaLangIntegerArray:(IOSIntArray *)a
                            withInt:(int)aSize
           withJavaLangIntegerArray:(IOSIntArray *)b
                            withInt:(int)bSize;
+ (JavaMathBigInteger *)subtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (void)subtractWithJavaLangIntegerArray:(IOSIntArray *)res
                withJavaLangIntegerArray:(IOSIntArray *)a
                                 withInt:(int)aSize
                withJavaLangIntegerArray:(IOSIntArray *)b
                                 withInt:(int)bSize;
+ (IOSIntArray *)addWithJavaLangIntegerArray:(IOSIntArray *)a
                                     withInt:(int)aSize
                    withJavaLangIntegerArray:(IOSIntArray *)b
                                     withInt:(int)bSize;
+ (void)inplaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                  withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (int)inplaceAddWithJavaLangIntegerArray:(IOSIntArray *)a
                                  withInt:(int)aSize
                                  withInt:(int)addend;
+ (void)inplaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                 withInt:(int)addend;
+ (void)inplaceSubtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                       withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (void)inverseSubtractWithJavaLangIntegerArray:(IOSIntArray *)res
                       withJavaLangIntegerArray:(IOSIntArray *)a
                                        withInt:(int)aSize
                       withJavaLangIntegerArray:(IOSIntArray *)b
                                        withInt:(int)bSize;
+ (IOSIntArray *)subtractWithJavaLangIntegerArray:(IOSIntArray *)a
                                          withInt:(int)aSize
                         withJavaLangIntegerArray:(IOSIntArray *)b
                                          withInt:(int)bSize;
+ (void)completeInPlaceSubtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                               withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (void)completeInPlaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                          withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (int)unsignedArraysCompareWithJavaLangIntegerArray:(IOSIntArray *)a
                            withJavaLangIntegerArray:(IOSIntArray *)b
                                             withInt:(int)aSize
                                             withInt:(int)bSize;
@end