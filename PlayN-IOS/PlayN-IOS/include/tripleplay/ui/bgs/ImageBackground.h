//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/ImageBackground.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiBgsImageBackground_RESTRICT
#define TripleplayUiBgsImageBackground_INCLUDE_ALL 1
#endif
#undef TripleplayUiBgsImageBackground_RESTRICT

#if !defined (_TripleplayUiBgsImageBackground_) && (TripleplayUiBgsImageBackground_INCLUDE_ALL || TripleplayUiBgsImageBackground_INCLUDE)
#define _TripleplayUiBgsImageBackground_

@class TripleplayUiBackground_Instance;
@protocol PlaynCoreImage;
@protocol PythagorasFIDimension;

#define TripleplayUiBackground_RESTRICT 1
#define TripleplayUiBackground_INCLUDE 1
#include "tripleplay/ui/Background.h"

@interface TripleplayUiBgsImageBackground : TripleplayUiBackground {
 @public
  id<PlaynCoreImage> _image_;
}

@property (nonatomic, strong) id<PlaynCoreImage> _image;

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image;
- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size;
@end
#endif
