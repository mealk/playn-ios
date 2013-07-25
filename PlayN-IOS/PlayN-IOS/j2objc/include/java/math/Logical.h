//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Logical.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaMathLogical_H_
#define _JavaMathLogical_H_

@class JavaMathBigInteger;

#import "JreEmulation.h"

@interface JavaMathLogical : NSObject {
}

- (id)init;
+ (JavaMathBigInteger *)not__WithJavaMathBigInteger:(JavaMathBigInteger *)val;
+ (JavaMathBigInteger *)andWithJavaMathBigInteger:(JavaMathBigInteger *)val
                           withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)andPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                   withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)andDiffSignsWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                    withJavaMathBigInteger:(JavaMathBigInteger *)negative;
+ (JavaMathBigInteger *)andNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)longer
                                   withJavaMathBigInteger:(JavaMathBigInteger *)shorter;
+ (JavaMathBigInteger *)andNotWithJavaMathBigInteger:(JavaMathBigInteger *)val
                              withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)andNotPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                      withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)andNotPositiveNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                              withJavaMathBigInteger:(JavaMathBigInteger *)negative;
+ (JavaMathBigInteger *)andNotNegativePositiveWithJavaMathBigInteger:(JavaMathBigInteger *)negative
                                              withJavaMathBigInteger:(JavaMathBigInteger *)positive;
+ (JavaMathBigInteger *)andNotNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                      withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)orWithJavaMathBigInteger:(JavaMathBigInteger *)val
                          withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)orPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)longer
                                  withJavaMathBigInteger:(JavaMathBigInteger *)shorter;
+ (JavaMathBigInteger *)orNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                  withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)orDiffSignsWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                   withJavaMathBigInteger:(JavaMathBigInteger *)negative;
+ (JavaMathBigInteger *)xorWithJavaMathBigInteger:(JavaMathBigInteger *)val
                           withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)xorPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)longer
                                   withJavaMathBigInteger:(JavaMathBigInteger *)shorter;
+ (JavaMathBigInteger *)xorNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                   withJavaMathBigInteger:(JavaMathBigInteger *)that;
+ (JavaMathBigInteger *)xorDiffSignsWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                    withJavaMathBigInteger:(JavaMathBigInteger *)negative;
@end

#endif // _JavaMathLogical_H_
