//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/EquationSprite.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreTextFormat;
@class TuxkidsTuxblocksCoreSolveBlocksBaseBlock;
@class TuxkidsTuxblocksCoreSolveBlocksModifierBlock;
@protocol PlaynCoreImageLayer;

#import "JreEmulation.h"

@interface TuxkidsTuxblocksCoreSolveEquationSprite : NSObject {
 @public
  id<PlaynCoreImageLayer> layer__;
  TuxkidsTuxblocksCoreSolveBlocksBaseBlock *rightHandSide_, *leftHandSide_;
}

@property (nonatomic, strong) id<PlaynCoreImageLayer> layer_;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksBaseBlock *rightHandSide;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksBaseBlock *leftHandSide;

+ (PlaynCoreTextFormat *)textFormat;
+ (void)setTextFormat:(PlaynCoreTextFormat *)textFormat;
- (id<PlaynCoreImageLayer>)layer;
- (id)initWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)leftHandSide
          withTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)rightHandSide;
- (void)refreshWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)dragging
                   withTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)highlight
                                                       withBOOL:(BOOL)flipModifier;
@end
