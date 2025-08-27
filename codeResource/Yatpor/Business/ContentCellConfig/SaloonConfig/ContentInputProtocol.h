// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentInputProtocol.h
// UserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class ContentMediaItem;
@class LanguageItem;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol OnDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(ContentMediaItem *)item;
- (BOOL)statuses:(LanguageItem *)item;

//: - (void)onTextChanged:(id)sender;
- (void)spaceChanged:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)constituentUsers:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           parent:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)down:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 oscillogram:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)content:(NSString *)text on:(NSArray *)atUsers poke:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)complete:(id)emoticon;

//: - (void)onCancelRecording;
- (void)queryedIn;

//: - (void)onStopRecording;
- (void)teamRed;

//: - (void)onStartRecording;
- (void)keyDay;

//: - (void)onTapMoreBtn:(id)sender;
- (void)snipEnable:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)willing:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)tips:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)scaleValue:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)progresses:(id)sender;

//: - (void)didReplyCancelled;
- (void)sonogramDevice;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)green:(NSInteger)index should:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)viewwed:(NSArray<PHAsset *> *)assets;

//: @end
@end
