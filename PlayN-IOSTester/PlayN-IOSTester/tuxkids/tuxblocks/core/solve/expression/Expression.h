//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/Expression.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveExpressionExpression_H_
#define _TuxkidsTuxblocksCoreSolveExpressionExpression_H_

@class PlaynCoreTextFormat;
@class PythagorasFVector;
@class TuxkidsTuxblocksCoreUtilsHashCode;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"
#include "tuxkids/tuxblocks/core/solve/expression/ExpressionWriter.h"
#include "tuxkids/tuxblocks/core/utils/HashCode.h"

#define TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_ADD 0
#define TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_MULT 1
#define TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_NUM 2

@interface TuxkidsTuxblocksCoreSolveExpressionExpression : TuxkidsTuxblocksCorePlayNObject < TuxkidsTuxblocksCoreUtilsHashCode_Hashable > {
}

+ (int)PREC_ADD;
+ (int)PREC_MULT;
+ (int)PREC_NUM;
- (NSString *)toMathString;
- (BOOL)hasVariable;
- (int)evaluate;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)getSimplified;
- (int)getPrecedence;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)plusWithInt:(int)value;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)minusWithInt:(int)value;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)timesWithInt:(int)value;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)overWithInt:(int)value;
- (TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *)getExpressionWriterWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (NSString *)description;
- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)param0;
- (id)init;
@end

@interface TuxkidsTuxblocksCoreSolveExpressionExpression_$1 : TuxkidsTuxblocksCoreSolveExpressionExpressionWriter {
 @public
  id<PlaynCoreTextLayout> layout_;
  NSString *val$mathString_;
}

@property (nonatomic, strong) id<PlaynCoreTextLayout> layout;
@property (nonatomic, copy) NSString *val$mathString;

- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                                  withInt:(int)childColor;
- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)arg$0
                     withNSString:(NSString *)capture$0;
@end

#endif // _TuxkidsTuxblocksCoreSolveExpressionExpression_H_
