//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/Multiplication.java
//
//  Created by Thomas on 7/10/13.
//

@class TuxkidsTuxblocksCoreSolveExpressionExpression;

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/solve/expression/BinaryOperation.h"

@interface TuxkidsTuxblocksCoreSolveExpressionMultiplication : TuxkidsTuxblocksCoreSolveExpressionBinaryOperation {
}

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)operandA
          withTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)operandB;
- (int)operateWithInt:(int)a
              withInt:(int)b;
- (NSString *)getSymbol;
- (BOOL)isCommutative;
- (int)getPrecedence;
@end
