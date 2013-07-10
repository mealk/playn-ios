//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc-0.8/junit/build_result/java/junit/framework/ComparisonCompactor.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"

@interface JunitFrameworkComparisonCompactor : NSObject {
 @public
  int fContextLength_;
  NSString *fExpected_;
  NSString *fActual_;
  int fPrefix_;
  int fSuffix_;
}

@property (nonatomic, assign) int fContextLength;
@property (nonatomic, copy) NSString *fExpected;
@property (nonatomic, copy) NSString *fActual;
@property (nonatomic, assign) int fPrefix;
@property (nonatomic, assign) int fSuffix;

+ (NSString *)ELLIPSIS;
+ (NSString *)DELTA_END;
+ (NSString *)DELTA_START;
- (id)initWithInt:(int)contextLength
     withNSString:(NSString *)expected
     withNSString:(NSString *)actual;
- (NSString *)compactWithNSString:(NSString *)message;
- (NSString *)compactStringWithNSString:(NSString *)source;
- (void)findCommonPrefix;
- (void)findCommonSuffix;
- (NSString *)computeCommonPrefix;
- (NSString *)computeCommonSuffix;
- (BOOL)areStringsEqual;
@end
