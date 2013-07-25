//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/ExpressionWriter.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveExpressionExpressionWriter_H_
#define _TuxkidsTuxblocksCoreSolveExpressionExpressionWriter_H_

@class PlaynCoreTextFormat;
@class PythagorasFVector;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"

#define TuxkidsTuxblocksCoreSolveExpressionExpressionWriter_SPACING 5.0

@interface TuxkidsTuxblocksCoreSolveExpressionExpressionWriter : NSObject {
 @public
  PythagorasFVector *size_;
  PlaynCoreTextFormat *textFormat_;
}

@property (nonatomic, strong) PythagorasFVector *size;
@property (nonatomic, strong) PlaynCoreTextFormat *textFormat;

+ (float)SPACING;
- (PythagorasFVector *)getSize;
- (float)width;
- (float)height;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                                  withInt:(int)childColor;
- (id<PlaynCoreTextLayout>)layoutWithNSString:(NSString *)text
                      withPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
@end

#endif // _TuxkidsTuxblocksCoreSolveExpressionExpressionWriter_H_
