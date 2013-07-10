//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Field.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Boolean.h"
#import "java/lang/Integer.h"
#import "java/lang/Throwable.h"
#import "playn/core/Font.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Keyboard.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Pointer.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Rectangle.h"
#import "pythagoras/f/Dimension.h"
#import "react/Connection.h"
#import "react/Signal.h"
#import "react/SignalView.h"
#import "react/UnitSlot.h"
#import "react/Value.h"
#import "tripleplay/platform/NativeTextField.h"
#import "tripleplay/platform/TPPlatform.h"
#import "tripleplay/ui/Background.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Field.h"
#import "tripleplay/ui/Icon.h"
#import "tripleplay/ui/Log.h"
#import "tripleplay/ui/Style.h"
#import "tripleplay/ui/Styles.h"
#import "tripleplay/ui/TextWidget.h"
#import "tripleplay/ui/Widget.h"
#import "tripleplay/util/Logger.h"

@implementation TripleplayUiField

static TripleplayUiStyle_Flag * TripleplayUiField_FULLTIME_NATIVE_FIELD_;
static TripleplayUiStyle_Flag * TripleplayUiField_AUTOCAPITALIZATION_;
static TripleplayUiStyle_Flag * TripleplayUiField_AUTOCORRECTION_;
static TripleplayUiStyle_Flag * TripleplayUiField_SECURE_TEXT_ENTRY_;
static TripleplayUiStyle * TripleplayUiField_TEXT_TYPE_;
static TripleplayUiStyle * TripleplayUiField_MAXIMUM_INPUT_LENGTH_;
static TripleplayUiStyle * TripleplayUiField_RETURN_KEY_LABEL_;
static TripleplayUiStyle_Flag * TripleplayUiField_MULTILINE_;

@synthesize text_ = text__;
@synthesize _nativeField = _nativeField_;
@synthesize _defaultTransformer = _defaultTransformer_;
@synthesize _defaultValidator = _defaultValidator_;
@synthesize _finishedEditing = _finishedEditing_;
@synthesize _popupLabel = _popupLabel_;
@synthesize _maxFieldLength = _maxFieldLength_;

+ (TripleplayUiStyle_Flag *)FULLTIME_NATIVE_FIELD {
  return TripleplayUiField_FULLTIME_NATIVE_FIELD_;
}

+ (TripleplayUiStyle_Flag *)AUTOCAPITALIZATION {
  return TripleplayUiField_AUTOCAPITALIZATION_;
}

+ (TripleplayUiStyle_Flag *)AUTOCORRECTION {
  return TripleplayUiField_AUTOCORRECTION_;
}

+ (TripleplayUiStyle_Flag *)SECURE_TEXT_ENTRY {
  return TripleplayUiField_SECURE_TEXT_ENTRY_;
}

+ (TripleplayUiStyle *)TEXT_TYPE {
  return TripleplayUiField_TEXT_TYPE_;
}

+ (TripleplayUiStyle *)MAXIMUM_INPUT_LENGTH {
  return TripleplayUiField_MAXIMUM_INPUT_LENGTH_;
}

+ (TripleplayUiStyle *)RETURN_KEY_LABEL {
  return TripleplayUiField_RETURN_KEY_LABEL_;
}

+ (TripleplayUiStyle_Flag *)MULTILINE {
  return TripleplayUiField_MULTILINE_;
}

- (id)init {
  return [self initTripleplayUiFieldWithNSString:@""];
}

- (id)initTripleplayUiFieldWithNSString:(NSString *)initialText {
  return [self initTripleplayUiFieldWithNSString:initialText withTripleplayUiStyles:[TripleplayUiStyles none]];
}

- (id)initWithNSString:(NSString *)initialText {
  return [self initTripleplayUiFieldWithNSString:initialText];
}

- (id)initWithTripleplayUiStyles:(TripleplayUiStyles *)styles {
  return [self initTripleplayUiFieldWithNSString:@"" withTripleplayUiStyles:styles];
}

- (id)initTripleplayUiFieldWithNSString:(NSString *)initialText
                 withTripleplayUiStyles:(TripleplayUiStyles *)styles {
  if ((self = [super init])) {
    _defaultTransformer_ = [[TripleplayUiField_$3 alloc] initWithTripleplayUiField:self];
    _defaultValidator_ = [[TripleplayUiField_$4 alloc] initWithTripleplayUiField:self];
    _maxFieldLength_ = 0;
    [self enableInteraction];
    (void) [self setStylesWithTripleplayUiStyles:styles];
    if ([[TripleplayPlatformTPPlatform instance] hasNativeTextFields]) {
      _nativeField_ = [[TripleplayPlatformTPPlatform instance] createNativeTextField];
      (void) [self setValidatorWithTripleplayPlatformNativeTextField_Validator:nil];
      (void) [self setTransformerWithTripleplayPlatformNativeTextField_Transformer:nil];
      text__ = [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) text];
      _finishedEditing_ = [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) finishedEditing];
      (void) [((ReactSignal *) NIL_CHK(_finishedEditing_)) connectWithReactSlot:[[TripleplayUiField_$1 alloc] initWithTripleplayUiField:self]];
    }
    else {
      _nativeField_ = nil;
      text__ = ((ReactValue *) [ReactValue createWithId:@""]);
      _finishedEditing_ = ((ReactSignal *) [ReactSignal create]);
    }
    (void) [((ReactValue *) NIL_CHK(self.text_)) updateWithId:initialText];
    (void) [((ReactValue *) NIL_CHK(self.text_)) connectWithReactValueView_Listener:[self textDidChange]];
  }
  return self;
}

- (id)initWithNSString:(NSString *)initialText
withTripleplayUiStyles:(TripleplayUiStyles *)styles {
  return [self initTripleplayUiFieldWithNSString:initialText withTripleplayUiStyles:styles];
}

- (id<ReactSignalView>)finishedEditing {
  return _finishedEditing_;
}

- (TripleplayUiField *)setTextTypeWithPlaynCoreKeyboard_TextTypeEnum:(PlaynCoreKeyboard_TextTypeEnum *)type {
  return ((TripleplayUiField *) [self addStylesWithTripleplayUiStyle_BindingArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[TripleplayUiStyle_Binding class]] count:1, ((TripleplayUiStyle_Binding *) [((TripleplayUiStyle *) NIL_CHK(TripleplayUiField_TEXT_TYPE_)) isWithId:type]) ]]);
}

- (TripleplayUiField *)setPopupLabelWithNSString:(NSString *)label {
  _popupLabel_ = label;
  return self;
}

- (TripleplayUiField *)setValidatorWithTripleplayPlatformNativeTextField_Validator:(id<TripleplayPlatformNativeTextField_Validator>)validator {
  if (_nativeField_ != nil) (void) [_nativeField_ setValidatorWithTripleplayPlatformNativeTextField_Validator:validator == nil ? _defaultValidator_ : validator];
  return self;
}

- (TripleplayUiField *)setTransformerWithTripleplayPlatformNativeTextField_Transformer:(id<TripleplayPlatformNativeTextField_Transformer>)transformer {
  if (_nativeField_ != nil) (void) [_nativeField_ setTransformerWithTripleplayPlatformNativeTextField_Transformer:transformer == nil ? _defaultTransformer_ : transformer];
  return self;
}

- (TripleplayUiField *)updateNativeFieldBounds {
  if (_nativeField_ != nil) (void) [_nativeField_ setBoundsWithPythagorasFIRectangle:[self getNativeFieldBounds]];
  return self;
}

- (BOOL)hasFocus {
  return _nativeField_ != nil && [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) hasFocus];
}

- (BOOL)textIsValidWithNSString:(NSString *)text {
  int maxLength = _maxFieldLength_;
  int textLength = text == nil ? 0 : [NIL_CHK(text) length];
  return maxLength < 1 || textLength <= maxLength;
}

- (NSString *)transformTextWithNSString:(NSString *)text {
  return text;
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiField class]];
}

- (NSString *)text {
  NSString *ctext = ((NSString *) [((ReactValue *) NIL_CHK(text__)) get]);
  return (ctext == nil || [NIL_CHK(ctext) length] == 0) ? @" " : ctext;
}

- (id<TripleplayUiIcon>)icon {
  return nil;
}

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                       withFloat:(float)x
                                       withFloat:(float)y {
  [super onPointerStartWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  if (![self isEnabled] || [self fulltimeNativeField]) return;
  if (_nativeField_ != nil) {
    [self updateModeWithBOOL:YES];
    [_nativeField_ focus];
  }
  else {
    [((id<PlaynCoreKeyboard>) [PlaynCorePlayN keyboard]) getTextWithPlaynCoreKeyboard_TextTypeEnum:((PlaynCoreKeyboard_TextTypeEnum *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_TEXT_TYPE_]) withNSString:_popupLabel_ withNSString:((NSString *) [((ReactValue *) NIL_CHK(text__)) get]) withPlaynCoreUtilCallback:[[TripleplayUiField_$2 alloc] initWithTripleplayUiField:self]];
  }
}

- (void)wasRemoved {
  [super wasRemoved];
  [self updateModeWithBOOL:NO];
}

- (TripleplayUiElement_LayoutData *)createLayoutDataWithFloat:(float)hintX
                                                    withFloat:(float)hintY {
  return [[TripleplayUiField_FieldLayoutData alloc] initWithTripleplayUiField:self withFloat:hintX withFloat:hintY];
}

- (BOOL)fulltimeNativeField {
  return _nativeField_ != nil && [((JavaLangBoolean *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_FULLTIME_NATIVE_FIELD_]) booleanValue];
}

- (PythagorasFRectangle *)getNativeFieldBounds {
  TripleplayUiBackground *bg = ((TripleplayUiBackground *) [self resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle BACKGROUND]]);
  PythagorasFPoint *screenCoords = [PlaynCoreLayer_Util layerToScreenWithPlaynCoreLayer:layer_ withFloat:((TripleplayUiBackground *) NIL_CHK(bg)).left withFloat:((TripleplayUiBackground *) NIL_CHK(bg)).top];
  return [[PythagorasFRectangle alloc] initWithFloat:((PythagorasFPoint *) NIL_CHK(screenCoords)).x_ withFloat:((PythagorasFPoint *) NIL_CHK(screenCoords)).y_ withFloat:((PythagorasFDimension *) NIL_CHK(_size_)).width_ - [((TripleplayUiBackground *) NIL_CHK(bg)) width] withFloat:((PythagorasFDimension *) NIL_CHK(_size_)).height_ - [((TripleplayUiBackground *) NIL_CHK(bg)) height]];
}

- (void)updateModeWithBOOL:(BOOL)nativeField {
  if (_nativeField_ == nil) return;
  if (nativeField) {
    TripleplayPlatformNativeTextField_ModeEnum *mode = [TripleplayPlatformNativeTextField_ModeEnum NORMAL];
    BOOL multiLine = [((JavaLangBoolean *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_MULTILINE_]) booleanValue];
    if ([((JavaLangBoolean *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_SECURE_TEXT_ENTRY_]) booleanValue]) {
      if (multiLine) [((TripleplayUtilLogger *) NIL_CHK([TripleplayUiLog log])) warningWithNSString:@"Ignoring MULTILINE Style" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:0 ]];
      mode = [TripleplayPlatformNativeTextField_ModeEnum SECURE];
    }
    else if (multiLine) {
      mode = [TripleplayPlatformNativeTextField_ModeEnum MULTI_LINE];
    }
    id<TripleplayPlatformNativeTextField> newField = [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) refreshModeWithTripleplayPlatformNativeTextField_ModeEnum:mode];
    if (newField != _nativeField_) {
      [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) remove];
      _nativeField_ = newField;
    }
    (void) [((id<TripleplayPlatformNativeTextField>) [((id<TripleplayPlatformNativeTextField>) [((id<TripleplayPlatformNativeTextField>) [((id<TripleplayPlatformNativeTextField>) [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) setTextTypeWithPlaynCoreKeyboard_TextTypeEnum:((PlaynCoreKeyboard_TextTypeEnum *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_TEXT_TYPE_])]) setFontWithPlaynCoreFont:((id<PlaynCoreFont>) [self resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle FONT]])]) setAutocapitalizationWithBOOL:[((JavaLangBoolean *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_AUTOCAPITALIZATION_]) booleanValue]]) setAutocorrectionWithBOOL:[((JavaLangBoolean *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_AUTOCORRECTION_]) booleanValue]]) setReturnKeyLabelWithNSString:((NSString *) [self resolveStyleWithTripleplayUiStyle:TripleplayUiField_RETURN_KEY_LABEL_])];
    (void) [self updateNativeFieldBounds];
    [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) add];
    [self setGlyphLayerAlphaWithFloat:0];
  }
  else {
    [((id<TripleplayPlatformNativeTextField>) NIL_CHK(_nativeField_)) remove];
    [self setGlyphLayerAlphaWithFloat:1];
  }
}

- (void)setGlyphLayerAlphaWithFloat:(float)alpha {
  if ([((TripleplayUiWidget_Glyph *) NIL_CHK(_tglyph_)) layer] != nil) (void) [((id<PlaynCoreImageLayer>) [((TripleplayUiWidget_Glyph *) NIL_CHK(_tglyph_)) layer]) setAlphaWithFloat:alpha];
}

+ (void)initialize {
  if (self == [TripleplayUiField class]) {
    TripleplayUiField_FULLTIME_NATIVE_FIELD_ = [TripleplayUiStyle newFlagWithBOOL:NO withBOOL:YES];
    TripleplayUiField_AUTOCAPITALIZATION_ = [TripleplayUiStyle newFlagWithBOOL:NO withBOOL:YES];
    TripleplayUiField_AUTOCORRECTION_ = [TripleplayUiStyle newFlagWithBOOL:NO withBOOL:YES];
    TripleplayUiField_SECURE_TEXT_ENTRY_ = [TripleplayUiStyle newFlagWithBOOL:NO withBOOL:NO];
    TripleplayUiField_TEXT_TYPE_ = ((TripleplayUiStyle *) [TripleplayUiStyle newStyleWithBOOL:NO withId:[PlaynCoreKeyboard_TextTypeEnum DEFAULT]]);
    TripleplayUiField_MAXIMUM_INPUT_LENGTH_ = ((TripleplayUiStyle *) [TripleplayUiStyle newStyleWithBOOL:NO withId:[JavaLangInteger valueOfWithInt:0]]);
    TripleplayUiField_RETURN_KEY_LABEL_ = ((TripleplayUiStyle *) [TripleplayUiStyle newStyleWithBOOL:NO withId:nil]);
    TripleplayUiField_MULTILINE_ = [TripleplayUiStyle newFlagWithBOOL:NO withBOOL:NO];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiField *typedCopy = (TripleplayUiField *) copy;
  typedCopy.text_ = text__;
  typedCopy._nativeField = _nativeField_;
  typedCopy._defaultTransformer = _defaultTransformer_;
  typedCopy._defaultValidator = _defaultValidator_;
  typedCopy._finishedEditing = _finishedEditing_;
  typedCopy._popupLabel = _popupLabel_;
  typedCopy._maxFieldLength = _maxFieldLength_;
}

@end
@implementation TripleplayUiField_FieldLayoutData

@synthesize this$3 = this$3_;

- (id)initWithTripleplayUiField:(TripleplayUiField *)outer$
                      withFloat:(float)hintX
                      withFloat:(float)hintY {
  if ((self = [super initWithTripleplayUiTextWidget:outer$ withFloat:hintX withFloat:hintY])) {
    this$3_ = outer$;
  }
  return self;
}

- (void)layoutWithFloat:(float)left
              withFloat:(float)top
              withFloat:(float)width
              withFloat:(float)height {
  [super layoutWithFloat:left withFloat:top withFloat:width withFloat:height];
  if ([this$3_ fulltimeNativeField]) [this$3_ updateModeWithBOOL:YES];
  this$3_._maxFieldLength = [((JavaLangInteger *) [this$3_ resolveStyleWithTripleplayUiStyle:[TripleplayUiField MAXIMUM_INPUT_LENGTH]]) intValue];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiField_FieldLayoutData *typedCopy = (TripleplayUiField_FieldLayoutData *) copy;
  typedCopy.this$3 = this$3_;
}

@end
@implementation TripleplayUiField_$1

@synthesize this$0 = this$0_;

- (void)onEmitWithId:(JavaLangBoolean *)event {
  if (![this$0_ fulltimeNativeField]) [this$0_ updateModeWithBOOL:NO];
}

- (id)initWithTripleplayUiField:(TripleplayUiField *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiField_$1 *typedCopy = (TripleplayUiField_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiField_$2

@synthesize this$0 = this$0_;

- (void)onSuccessWithId:(NSString *)result {
  if (result != nil) (void) [((ReactValue *) NIL_CHK(this$0_.text_)) updateWithId:result];
  [((ReactSignal *) NIL_CHK(this$0_._finishedEditing)) emitWithId:[JavaLangBoolean valueOfWithBOOL:result != nil]];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
}

- (id)initWithTripleplayUiField:(TripleplayUiField *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiField_$2 *typedCopy = (TripleplayUiField_$2 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiField_$3

@synthesize this$0 = this$0_;

- (NSString *)transformWithNSString:(NSString *)text {
  return [this$0_ transformTextWithNSString:text];
}

- (id)initWithTripleplayUiField:(TripleplayUiField *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiField_$3 *typedCopy = (TripleplayUiField_$3 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiField_$4

@synthesize this$0 = this$0_;

- (BOOL)isValidWithNSString:(NSString *)text {
  return [this$0_ textIsValidWithNSString:text];
}

- (id)initWithTripleplayUiField:(TripleplayUiField *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiField_$4 *typedCopy = (TripleplayUiField_$4 *) copy;
  typedCopy.this$0 = this$0_;
}

@end