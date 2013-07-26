//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/markup/ParentExpressionWriter.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveMarkupParentExpressionWriter_H_
#define _TuxkidsTuxblocksCoreSolveMarkupParentExpressionWriter_H_

@class PlaynCoreTextFormat;
@class PythagorasFVector;
@protocol JavaUtilList;
@protocol PlaynCoreCanvas;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/markup/ExpressionWriter.h"

@interface TuxkidsTuxblocksCoreSolveMarkupParentExpressionWriter : TuxkidsTuxblocksCoreSolveMarkupExpressionWriter {
 @public
  id<JavaUtilList> children_;
  id<JavaUtilList> childOffsets_;
}

@property (nonatomic, strong) id<JavaUtilList> children;
@property (nonatomic, strong) id<JavaUtilList> childOffsets;

- (void)addChildren;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (void)addChildWithTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)child
                                                          withFloat:(float)x
                                                          withFloat:(float)y;
- (void)addChildWithTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)child
                                              withPythagorasFVector:(PythagorasFVector *)offset;
- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas;
- (PythagorasFVector *)blankCenter;
@end

#endif // _TuxkidsTuxblocksCoreSolveMarkupParentExpressionWriter_H_