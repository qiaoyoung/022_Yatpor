
#import <Foundation/Foundation.h>

typedef struct {
    Byte go;
    Byte *offReplyShould;
    unsigned int goThrough;
	int viewReply;
	int packet;
} StructEraseData;

@interface EraseData : NSObject

@end

@implementation EraseData

+ (NSData *)EraseDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)EraseDataToByte:(StructEraseData *)data {
    for (int i = 0; i < data->goThrough; i++) {
        data->offReplyShould[i] ^= data->go;
    }
    data->offReplyShould[data->goThrough] = 0;
	if (data->goThrough >= 2) {
		data->viewReply = data->offReplyShould[0];
		data->packet = data->offReplyShould[1];
	}
    return data->offReplyShould;
}

+ (NSString *)StringFromEraseData:(StructEraseData *)data {
    return [NSString stringWithUTF8String:(char *)[self EraseDataToByte:data]];
}

//: activity_group_info_group_mute
+ (NSString *)show_animalValue {
    /* static */ NSString *show_animalValue = nil;
    if (!show_animalValue) {
		NSArray<NSNumber *> *origin = @[@53, @55, @32, @61, @34, @61, @32, @45, @11, @51, @38, @59, @33, @36, @11, @61, @58, @50, @59, @11, @51, @38, @59, @33, @36, @11, @57, @33, @32, @49, @32];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){84, (Byte *)data.bytes, 30, 21, 167};
        show_animalValue = [self StringFromEraseData:&value];
    }
    return show_animalValue;
}

//: send_group_card
+ (NSString *)user_fortyPath {
    /* static */ NSString *user_fortyPath = nil;
    if (!user_fortyPath) {
		NSArray<NSNumber *> *origin = @[@193, @215, @220, @214, @237, @213, @192, @221, @199, @194, @237, @209, @211, @192, @214, @104];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){178, (Byte *)data.bytes, 15, 83, 73};
        user_fortyPath = [self StringFromEraseData:&value];
    }
    return user_fortyPath;
}

//: ic_group_top
+ (NSString *)userNeedFormat {
    /* static */ NSString *userNeedFormat = nil;
    if (!userNeedFormat) {
		NSArray<NSNumber *> *origin = @[@70, @76, @112, @72, @93, @64, @90, @95, @112, @91, @64, @95, @100];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){47, (Byte *)data.bytes, 12, 85, 129};
        userNeedFormat = [self StringFromEraseData:&value];
    }
    return userNeedFormat;
}

//: queren_quit_group
+ (NSString *)show_frameValue {
    /* static */ NSString *show_frameValue = nil;
    if (!show_frameValue) {
		NSArray<NSNumber *> *origin = @[@70, @66, @82, @69, @82, @89, @104, @70, @66, @94, @67, @104, @80, @69, @88, @66, @71, @83];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){55, (Byte *)data.bytes, 17, 168, 194};
        show_frameValue = [self StringFromEraseData:&value];
    }
    return show_frameValue;
}

//: group_info_activity_exit
+ (NSString *)mTeamValue {
    /* static */ NSString *mTeamValue = nil;
    if (!mTeamValue) {
		NSArray<NSNumber *> *origin = @[@252, @233, @244, @238, @235, @196, @242, @245, @253, @244, @196, @250, @248, @239, @242, @237, @242, @239, @226, @196, @254, @227, @242, @239, @54];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){155, (Byte *)data.bytes, 24, 145, 120};
        mTeamValue = [self StringFromEraseData:&value];
    }
    return mTeamValue;
}

//: queren
+ (NSString *)main_wheatPath {
    /* static */ NSString *main_wheatPath = nil;
    if (!main_wheatPath) {
		NSArray<NSNumber *> *origin = @[@59, @63, @47, @56, @47, @36, @158];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){74, (Byte *)data.bytes, 6, 4, 38};
        main_wheatPath = [self StringFromEraseData:&value];
    }
    return main_wheatPath;
}

//: ic_identity_authentication
+ (NSString *)m_celebrityName {
    /* static */ NSString *m_celebrityName = nil;
    if (!m_celebrityName) {
		NSArray<NSNumber *> *origin = @[@96, @106, @86, @96, @109, @108, @103, @125, @96, @125, @112, @86, @104, @124, @125, @97, @108, @103, @125, @96, @106, @104, @125, @96, @102, @103, @77];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){9, (Byte *)data.bytes, 26, 14, 199};
        m_celebrityName = [self StringFromEraseData:&value];
    }
    return m_celebrityName;
}

//: new_owner_id
+ (NSString *)dreamLayerStr {
    /* static */ NSString *dreamLayerStr = nil;
    if (!dreamLayerStr) {
		NSArray<NSNumber *> *origin = @[@246, @253, @239, @199, @247, @239, @246, @253, @234, @199, @241, @252, @11];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){152, (Byte *)data.bytes, 12, 226, 192};
        dreamLayerStr = [self StringFromEraseData:&value];
    }
    return dreamLayerStr;
}

//: team_info_set_activity_group_tip
+ (NSString *)mTingStr {
    /* static */ NSString *mTingStr = nil;
    if (!mTingStr) {
		NSArray<NSNumber *> *origin = @[@239, @254, @250, @246, @196, @242, @245, @253, @244, @196, @232, @254, @239, @196, @250, @248, @239, @242, @237, @242, @239, @226, @196, @252, @233, @244, @238, @235, @196, @239, @242, @235, @186];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){155, (Byte *)data.bytes, 32, 199, 226};
        mTingStr = [self StringFromEraseData:&value];
    }
    return mTingStr;
}

//: ic_group_notice
+ (NSString *)user_redOfName {
    /* static */ NSString *user_redOfName = nil;
    if (!user_redOfName) {
		NSArray<NSNumber *> *origin = @[@254, @244, @200, @240, @229, @248, @226, @231, @200, @249, @248, @227, @254, @244, @242, @155];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){151, (Byte *)data.bytes, 15, 229, 151};
        user_redOfName = [self StringFromEraseData:&value];
    }
    return user_redOfName;
}

//: 图片保存失败，请重试
+ (NSString *)showImageChingMessage {
    /* static */ NSString *showImageChingMessage = nil;
    if (!showImageChingMessage) {
		NSArray<NSNumber *> *origin = @[@12, @114, @87, @14, @96, @110, @13, @86, @116, @12, @68, @113, @12, @77, @88, @1, @93, @76, @6, @85, @101, @1, @70, @94, @0, @110, @100, @1, @70, @124, @89];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){233, (Byte *)data.bytes, 30, 99, 2};
        showImageChingMessage = [self StringFromEraseData:&value];
    }
    return showImageChingMessage;
}

//: clear_history
+ (NSString *)main_sizeFormat {
    /* static */ NSString *main_sizeFormat = nil;
    if (!main_sizeFormat) {
		NSArray<NSNumber *> *origin = @[@168, @167, @174, @170, @185, @148, @163, @162, @184, @191, @164, @185, @178, @93];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){203, (Byte *)data.bytes, 13, 128, 211};
        main_sizeFormat = [self StringFromEraseData:&value];
    }
    return main_sizeFormat;
}

//: 2C3042
+ (NSString *)user_flameReleaseMsg {
    /* static */ NSString *user_flameReleaseMsg = nil;
    if (!user_flameReleaseMsg) {
		NSArray<NSNumber *> *origin = @[@23, @102, @22, @21, @17, @23, @18];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){37, (Byte *)data.bytes, 6, 216, 202};
        user_flameReleaseMsg = [self StringFromEraseData:&value];
    }
    return user_flameReleaseMsg;
}

//: icon_photo
+ (NSString *)userOrangeMessage {
    /* static */ NSString *userOrangeMessage = nil;
    if (!userOrangeMessage) {
		NSArray<NSNumber *> *origin = @[@117, @127, @115, @114, @67, @108, @116, @115, @104, @115, @254];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){28, (Byte *)data.bytes, 10, 80, 195};
        userOrangeMessage = [self StringFromEraseData:&value];
    }
    return userOrangeMessage;
}

//: activity_group_info_invite_permission
+ (NSString *)mainWindowDataKey {
    /* static */ NSString *mainWindowDataKey = nil;
    if (!mainWindowDataKey) {
		NSArray<NSNumber *> *origin = @[@14, @12, @27, @6, @25, @6, @27, @22, @48, @8, @29, @0, @26, @31, @48, @6, @1, @9, @0, @48, @6, @1, @25, @6, @27, @10, @48, @31, @10, @29, @2, @6, @28, @28, @6, @0, @1, @242];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){111, (Byte *)data.bytes, 37, 135, 211};
        mainWindowDataKey = [self StringFromEraseData:&value];
    }
    return mainWindowDataKey;
}

//: activity_group_info_group_nick
+ (NSString *)app_rangeDiseaseTitle {
    /* static */ NSString *app_rangeDiseaseTitle = nil;
    if (!app_rangeDiseaseTitle) {
		NSArray<NSNumber *> *origin = @[@30, @28, @11, @22, @9, @22, @11, @6, @32, @24, @13, @16, @10, @15, @32, @22, @17, @25, @16, @32, @24, @13, @16, @10, @15, @32, @17, @22, @28, @20, @75];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){127, (Byte *)data.bytes, 30, 202, 131};
        app_rangeDiseaseTitle = [self StringFromEraseData:&value];
    }
    return app_rangeDiseaseTitle;
}

//: message_info_activity_msg_notice
+ (NSString *)main_stereoKeyContent {
    /* static */ NSString *main_stereoKeyContent = nil;
    if (!main_stereoKeyContent) {
		NSArray<NSNumber *> *origin = @[@164, @172, @186, @186, @168, @174, @172, @150, @160, @167, @175, @166, @150, @168, @170, @189, @160, @191, @160, @189, @176, @150, @164, @186, @174, @150, @167, @166, @189, @160, @170, @172, @26];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){201, (Byte *)data.bytes, 32, 208, 19};
        main_stereoKeyContent = [self StringFromEraseData:&value];
    }
    return main_stereoKeyContent;
}

//: name
+ (NSString *)mViewPath {
    /* static */ NSString *mViewPath = nil;
    if (!mViewPath) {
		NSArray<NSNumber *> *origin = @[@129, @142, @130, @138, @97];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){239, (Byte *)data.bytes, 4, 251, 244};
        mViewPath = [self StringFromEraseData:&value];
    }
    return mViewPath;
}

//: head_default_group
+ (NSString *)main_guyName {
    /* static */ NSString *main_guyName = nil;
    if (!main_guyName) {
		NSArray<NSNumber *> *origin = @[@209, @220, @216, @221, @230, @221, @220, @223, @216, @204, @213, @205, @230, @222, @203, @214, @204, @201, @6];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){185, (Byte *)data.bytes, 18, 26, 10};
        main_guyName = [self StringFromEraseData:&value];
    }
    return main_guyName;
}

//: group_edit
+ (NSString *)noti_grayKey {
    /* static */ NSString *noti_grayKey = nil;
    if (!noti_grayKey) {
		NSArray<NSNumber *> *origin = @[@144, @133, @152, @130, @135, @168, @146, @147, @158, @131, @131];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){247, (Byte *)data.bytes, 10, 112, 150};
        noti_grayKey = [self StringFromEraseData:&value];
    }
    return noti_grayKey;
}

//: group_mute_member_list_activity_title
+ (NSString *)main_rangeComfortableId {
    /* static */ NSString *main_rangeComfortableId = nil;
    if (!main_rangeComfortableId) {
		NSArray<NSNumber *> *origin = @[@136, @157, @128, @154, @159, @176, @130, @154, @155, @138, @176, @130, @138, @130, @141, @138, @157, @176, @131, @134, @156, @155, @176, @142, @140, @155, @134, @153, @134, @155, @150, @176, @155, @134, @155, @131, @138, @138];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){239, (Byte *)data.bytes, 37, 248, 134};
        main_rangeComfortableId = [self StringFromEraseData:&value];
    }
    return main_rangeComfortableId;
}

//: ic_group_all
+ (NSString *)mainUserName {
    /* static */ NSString *mainUserName = nil;
    if (!mainUserName) {
		NSArray<NSNumber *> *origin = @[@116, @126, @66, @122, @111, @114, @104, @109, @66, @124, @113, @113, @82];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){29, (Byte *)data.bytes, 12, 170, 37};
        mainUserName = [self StringFromEraseData:&value];
    }
    return mainUserName;
}

//: group_info_activity_team_member
+ (NSString *)main_startDismissValueTitle {
    /* static */ NSString *main_startDismissValueTitle = nil;
    if (!main_startDismissValueTitle) {
		NSArray<NSNumber *> *origin = @[@95, @74, @87, @77, @72, @103, @81, @86, @94, @87, @103, @89, @91, @76, @81, @78, @81, @76, @65, @103, @76, @93, @89, @85, @103, @85, @93, @85, @90, @93, @74, @10];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){56, (Byte *)data.bytes, 31, 142, 64};
        main_startDismissValueTitle = [self StringFromEraseData:&value];
    }
    return main_startDismissValueTitle;
}

//: activity_group_info_group_toast
+ (NSString *)mEtherStr {
    /* static */ NSString *mEtherStr = nil;
    if (!mEtherStr) {
		NSArray<NSNumber *> *origin = @[@226, @224, @247, @234, @245, @234, @247, @250, @220, @228, @241, @236, @246, @243, @220, @234, @237, @229, @236, @220, @228, @241, @236, @246, @243, @220, @247, @236, @226, @240, @247, @126];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){131, (Byte *)data.bytes, 31, 169, 76};
        mEtherStr = [self StringFromEraseData:&value];
    }
    return mEtherStr;
}

//: Transfer_group_ownership
+ (NSString *)k_diseaseValue {
    /* static */ NSString *k_diseaseValue = nil;
    if (!k_diseaseValue) {
		NSArray<NSNumber *> *origin = @[@183, @145, @130, @141, @144, @133, @134, @145, @188, @132, @145, @140, @150, @147, @188, @140, @148, @141, @134, @145, @144, @139, @138, @147, @12];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){227, (Byte *)data.bytes, 24, 106, 241};
        k_diseaseValue = [self StringFromEraseData:&value];
    }
    return k_diseaseValue;
}

//: modify_activity_modify_success
+ (NSString *)user_operationPath {
    /* static */ NSString *user_operationPath = nil;
    if (!user_operationPath) {
		NSArray<NSNumber *> *origin = @[@82, @80, @91, @86, @89, @70, @96, @94, @92, @75, @86, @73, @86, @75, @70, @96, @82, @80, @91, @86, @89, @70, @96, @76, @74, @92, @92, @90, @76, @76, @11];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){63, (Byte *)data.bytes, 30, 203, 80};
        user_operationPath = [self StringFromEraseData:&value];
    }
    return user_operationPath;
}

//: ic_card_share
+ (NSString *)m_enableFormat {
    /* static */ NSString *m_enableFormat = nil;
    if (!m_enableFormat) {
		NSArray<NSNumber *> *origin = @[@22, @28, @32, @28, @30, @13, @27, @32, @12, @23, @30, @13, @26, @45];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){127, (Byte *)data.bytes, 13, 145, 254};
        m_enableFormat = [self StringFromEraseData:&value];
    }
    return m_enableFormat;
}

//: Confirm_dismiss_group_chat
+ (NSString *)mToilUrl {
    /* static */ NSString *mToilUrl = nil;
    if (!mToilUrl) {
		NSArray<NSNumber *> *origin = @[@104, @68, @69, @77, @66, @89, @70, @116, @79, @66, @88, @70, @66, @88, @88, @116, @76, @89, @68, @94, @91, @116, @72, @67, @74, @95, @33];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){43, (Byte *)data.bytes, 26, 251, 51};
        mToilUrl = [self StringFromEraseData:&value];
    }
    return mToilUrl;
}

//: group_info_activity_op_failed
+ (NSString *)m_coverPath {
    /* static */ NSString *m_coverPath = nil;
    if (!m_coverPath) {
		NSArray<NSNumber *> *origin = @[@134, @147, @142, @148, @145, @190, @136, @143, @135, @142, @190, @128, @130, @149, @136, @151, @136, @149, @152, @190, @142, @145, @190, @135, @128, @136, @141, @132, @133, @100];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){225, (Byte *)data.bytes, 29, 147, 192};
        m_coverPath = [self StringFromEraseData:&value];
    }
    return m_coverPath;
}

//: group_info_activity_give_group
+ (NSString *)main_scaleOffId {
    /* static */ NSString *main_scaleOffId = nil;
    if (!main_scaleOffId) {
		NSArray<NSNumber *> *origin = @[@71, @82, @79, @85, @80, @127, @73, @78, @70, @79, @127, @65, @67, @84, @73, @86, @73, @84, @89, @127, @71, @73, @86, @69, @127, @71, @82, @79, @85, @80, @242];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){32, (Byte *)data.bytes, 30, 245, 99};
        main_scaleOffId = [self StringFromEraseData:&value];
    }
    return main_scaleOffId;
}

//: ic_modify
+ (NSString *)appBubblePath {
    /* static */ NSString *appBubblePath = nil;
    if (!appBubblePath) {
		NSArray<NSNumber *> *origin = @[@41, @35, @31, @45, @47, @36, @41, @38, @57, @202];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){64, (Byte *)data.bytes, 9, 18, 213};
        appBubblePath = [self StringFromEraseData:&value];
    }
    return appBubblePath;
}

//: /team/modifyname
+ (NSString *)mAnimalUsTitle {
    /* static */ NSString *mAnimalUsTitle = nil;
    if (!mAnimalUsTitle) {
		NSArray<NSNumber *> *origin = @[@49, @106, @123, @127, @115, @49, @115, @113, @122, @119, @120, @103, @112, @127, @115, @123, @31];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){30, (Byte *)data.bytes, 16, 242, 78};
        mAnimalUsTitle = [self StringFromEraseData:&value];
    }
    return mAnimalUsTitle;
}

//: team_info_set_activity_default_group_tip
+ (NSString *)userOffChingTitle {
    /* static */ NSString *userOffChingTitle = nil;
    if (!userOffChingTitle) {
		NSArray<NSNumber *> *origin = @[@37, @52, @48, @60, @14, @56, @63, @55, @62, @14, @34, @52, @37, @14, @48, @50, @37, @56, @39, @56, @37, @40, @14, @53, @52, @55, @48, @36, @61, @37, @14, @54, @35, @62, @36, @33, @14, @37, @56, @33, @241];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){81, (Byte *)data.bytes, 40, 195, 69};
        userOffChingTitle = [self StringFromEraseData:&value];
    }
    return userOffChingTitle;
}

//: FF483D
+ (NSString *)showQueryData {
    /* static */ NSString *showQueryData = nil;
    if (!showQueryData) {
		NSArray<NSNumber *> *origin = @[@130, @130, @240, @252, @247, @128, @159];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){196, (Byte *)data.bytes, 6, 142, 125};
        showQueryData = [self StringFromEraseData:&value];
    }
    return showQueryData;
}

//: activity_group_info_group_modify_permission
+ (NSString *)userCounternNameUrl {
    /* static */ NSString *userCounternNameUrl = nil;
    if (!userCounternNameUrl) {
		NSArray<NSNumber *> *origin = @[@27, @25, @14, @19, @12, @19, @14, @3, @37, @29, @8, @21, @15, @10, @37, @19, @20, @28, @21, @37, @29, @8, @21, @15, @10, @37, @23, @21, @30, @19, @28, @3, @37, @10, @31, @8, @23, @19, @9, @9, @19, @21, @20, @139];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){122, (Byte *)data.bytes, 43, 132, 185};
        userCounternNameUrl = [self StringFromEraseData:&value];
    }
    return userCounternNameUrl;
}

//: ic_invitee_verification
+ (NSString *)mNighUserStr {
    /* static */ NSString *mNighUserStr = nil;
    if (!mNighUserStr) {
		NSArray<NSNumber *> *origin = @[@139, @129, @189, @139, @140, @148, @139, @150, @135, @135, @189, @148, @135, @144, @139, @132, @139, @129, @131, @150, @139, @141, @140, @9];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){226, (Byte *)data.bytes, 23, 43, 106};
        mNighUserStr = [self StringFromEraseData:&value];
    }
    return mNighUserStr;
}

//: Transfer_group_exit
+ (NSString *)mByKey {
    /* static */ NSString *mByKey = nil;
    if (!mByKey) {
		NSArray<NSNumber *> *origin = @[@25, @63, @44, @35, @62, @43, @40, @63, @18, @42, @63, @34, @56, @61, @18, @40, @53, @36, @57, @132];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){77, (Byte *)data.bytes, 19, 52, 125};
        mByKey = [self StringFromEraseData:&value];
    }
    return mByKey;
}

//: activity_group_info_invite_verify
+ (NSString *)userQuarterbackMsg {
    /* static */ NSString *userQuarterbackMsg = nil;
    if (!userQuarterbackMsg) {
		NSArray<NSNumber *> *origin = @[@219, @217, @206, @211, @204, @211, @206, @195, @229, @221, @200, @213, @207, @202, @229, @211, @212, @220, @213, @229, @211, @212, @204, @211, @206, @223, @229, @204, @223, @200, @211, @220, @195, @210];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){186, (Byte *)data.bytes, 33, 240, 121};
        userQuarterbackMsg = [self StringFromEraseData:&value];
    }
    return userQuarterbackMsg;
}

//: ic_group_edit
+ (NSString *)mChingIdent {
    /* static */ NSString *mChingIdent = nil;
    if (!mChingIdent) {
		NSArray<NSNumber *> *origin = @[@91, @81, @109, @85, @64, @93, @71, @66, @109, @87, @86, @91, @70, @102];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){50, (Byte *)data.bytes, 13, 143, 142};
        mChingIdent = [self StringFromEraseData:&value];
    }
    return mChingIdent;
}

//: activity_user_profile_clear_chat
+ (NSString *)dreamOrangeTitle {
    /* static */ NSString *dreamOrangeTitle = nil;
    if (!dreamOrangeTitle) {
		NSArray<NSNumber *> *origin = @[@180, @182, @161, @188, @163, @188, @161, @172, @138, @160, @166, @176, @167, @138, @165, @167, @186, @179, @188, @185, @176, @138, @182, @185, @176, @180, @167, @138, @182, @189, @180, @161, @8];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){213, (Byte *)data.bytes, 32, 50, 26};
        dreamOrangeTitle = [self StringFromEraseData:&value];
    }
    return dreamOrangeTitle;
}

//: /team/destory
+ (NSString *)main_illIdent {
    /* static */ NSString *main_illIdent = nil;
    if (!main_illIdent) {
		NSArray<NSNumber *> *origin = @[@226, @185, @168, @172, @160, @226, @169, @168, @190, @185, @162, @191, @180, @142];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){205, (Byte *)data.bytes, 13, 146, 8};
        main_illIdent = [self StringFromEraseData:&value];
    }
    return main_illIdent;
}

//: ic_announcement
+ (NSString *)user_illTextData {
    /* static */ NSString *user_illTextData = nil;
    if (!user_illTextData) {
		NSArray<NSNumber *> *origin = @[@142, @132, @184, @134, @137, @137, @136, @146, @137, @132, @130, @138, @130, @137, @147, @190];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){231, (Byte *)data.bytes, 15, 81, 75};
        user_illTextData = [self StringFromEraseData:&value];
    }
    return user_illTextData;
}

//: ic_group_introduction
+ (NSString *)userLineName {
    /* static */ NSString *userLineName = nil;
    if (!userLineName) {
		NSArray<NSNumber *> *origin = @[@44, @38, @26, @34, @55, @42, @48, @53, @26, @44, @43, @49, @55, @42, @33, @48, @38, @49, @44, @42, @43, @166];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){69, (Byte *)data.bytes, 21, 144, 103};
        userLineName = [self StringFromEraseData:&value];
    }
    return userLineName;
}

//: ic_group_members
+ (NSString *)show_fortyData {
    /* static */ NSString *show_fortyData = nil;
    if (!show_fortyData) {
		NSArray<NSNumber *> *origin = @[@115, @121, @69, @125, @104, @117, @111, @106, @69, @119, @127, @119, @120, @127, @104, @105, @62];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){26, (Byte *)data.bytes, 16, 101, 79};
        show_fortyData = [self StringFromEraseData:&value];
    }
    return show_fortyData;
}

//: ic_card_black
+ (NSString *)noti_tingId {
    /* static */ NSString *noti_tingId = nil;
    if (!noti_tingId) {
		NSArray<NSNumber *> *origin = @[@95, @85, @105, @85, @87, @68, @82, @105, @84, @90, @87, @85, @93, @33];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){54, (Byte *)data.bytes, 13, 211, 17};
        noti_tingId = [self StringFromEraseData:&value];
    }
    return noti_tingId;
}

//: please_choose
+ (NSString *)appTeamData {
    /* static */ NSString *appTeamData = nil;
    if (!appTeamData) {
		NSArray<NSNumber *> *origin = @[@38, @58, @51, @55, @37, @51, @9, @53, @62, @57, @57, @37, @51, @245];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){86, (Byte *)data.bytes, 13, 70, 237};
        appTeamData = [self StringFromEraseData:&value];
    }
    return appTeamData;
}

//: ic_group_nick
+ (NSString *)app_replyId {
    /* static */ NSString *app_replyId = nil;
    if (!app_replyId) {
		NSArray<NSNumber *> *origin = @[@24, @18, @46, @22, @3, @30, @4, @1, @46, @31, @24, @18, @26, @107];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){113, (Byte *)data.bytes, 13, 153, 67};
        app_replyId = [self StringFromEraseData:&value];
    }
    return app_replyId;
}

//: ic_invite
+ (NSString *)mPerfectlyPath {
    /* static */ NSString *mPerfectlyPath = nil;
    if (!mPerfectlyPath) {
		NSArray<NSNumber *> *origin = @[@212, @222, @226, @212, @211, @203, @212, @201, @216, @210];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){189, (Byte *)data.bytes, 9, 112, 239};
        mPerfectlyPath = [self StringFromEraseData:&value];
    }
    return mPerfectlyPath;
}

//: group_info_activity_jiesan
+ (NSString *)notiEraseName {
    /* static */ NSString *notiEraseName = nil;
    if (!notiEraseName) {
		NSArray<NSNumber *> *origin = @[@47, @58, @39, @61, @56, @23, @33, @38, @46, @39, @23, @41, @43, @60, @33, @62, @33, @60, @49, @23, @34, @33, @45, @59, @41, @38, @254];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){72, (Byte *)data.bytes, 26, 223, 72};
        notiEraseName = [self StringFromEraseData:&value];
    }
    return notiEraseName;
}

//: ic_group_transfer
+ (NSString *)appToilValue {
    /* static */ NSString *appToilValue = nil;
    if (!appToilValue) {
		NSArray<NSNumber *> *origin = @[@150, @156, @160, @152, @141, @144, @138, @143, @160, @139, @141, @158, @145, @140, @153, @154, @141, @144];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){255, (Byte *)data.bytes, 17, 149, 245};
        appToilValue = [self StringFromEraseData:&value];
    }
    return appToilValue;
}

//: Group_name
+ (NSString *)m_nighWindowContent {
    /* static */ NSString *m_nighWindowContent = nil;
    if (!m_nighWindowContent) {
		NSArray<NSNumber *> *origin = @[@243, @198, @219, @193, @196, @235, @218, @213, @217, @209, @193];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){180, (Byte *)data.bytes, 10, 160, 213};
        m_nighWindowContent = [self StringFromEraseData:&value];
    }
    return m_nighWindowContent;
}

//: /team/modifyowner
+ (NSString *)mIllKey {
    /* static */ NSString *mIllKey = nil;
    if (!mIllKey) {
		NSArray<NSNumber *> *origin = @[@248, @163, @178, @182, @186, @248, @186, @184, @179, @190, @177, @174, @184, @160, @185, @178, @165, @181];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){215, (Byte *)data.bytes, 17, 199, 106};
        mIllKey = [self StringFromEraseData:&value];
    }
    return mIllKey;
}

//: jpg
+ (NSString *)show_flameKey {
    /* static */ NSString *show_flameKey = nil;
    if (!show_flameKey) {
		NSArray<NSNumber *> *origin = @[@109, @119, @96, @194];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){7, (Byte *)data.bytes, 3, 102, 51};
        show_flameKey = [self StringFromEraseData:&value];
    }
    return show_flameKey;
}

//: authentication
+ (NSString *)showBudgeId {
    /* static */ NSString *showBudgeId = nil;
    if (!showBudgeId) {
		NSArray<NSNumber *> *origin = @[@235, @255, @254, @226, @239, @228, @254, @227, @233, @235, @254, @227, @229, @228, @185];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){138, (Byte *)data.bytes, 14, 107, 87};
        showBudgeId = [self StringFromEraseData:&value];
    }
    return showBudgeId;
}

//: Chat_settop
+ (NSString *)dream_backFormat {
    /* static */ NSString *dream_backFormat = nil;
    if (!dream_backFormat) {
		NSArray<NSNumber *> *origin = @[@92, @119, @126, @107, @64, @108, @122, @107, @107, @112, @111, @173];
		NSData *data = [EraseData EraseDataToData:origin];
        StructEraseData value = (StructEraseData){31, (Byte *)data.bytes, 11, 5, 43};
        dream_backFormat = [self StringFromEraseData:&value];
    }
    return dream_backFormat;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TarotCardViewController.m
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAdvancedTeamCardViewController.h"
#import "TarotCardViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "TingViewController.h"
//: #import "CCCTeamMemberListViewController.h"
#import "AssetViewController.h"
//: #import "FFFTeamMuteMemberListViewController.h"
#import "AViewController.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "AnnouncementViewController.h"
//: #import "FFFTeamCardRowItem.h"
#import "SuccessItem.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTeamCardMemberItem.h"
#import "BarImageEmpty.h"
//: #import "FFFKitUtil.h"
#import "TextWithUtil.h"
//: #import "FFFTeamCardHeaderView.h"
#import "PoliceSquadView.h"
//: #import "FFFTeamListDataManager.h"
#import "ManagerEnable.h"
//: #import "FFFKitInfoFetchOption.h"
#import "ImageOption.h"
//: #import "FFFTeamHelper.h"
#import "HandleImageHelper.h"
//: #import "FFFTeamIntroduceViewController.h"
#import "GroundViewController.h"
//: #import "ZMONSetGroupNameView.h"
#import "WeltanschauungView.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "CollectionView.h"
//: #import "ZMONAlartView.h"
#import "TitleView.h"
//: #import "FFFGroupAvatarViewController.h"
#import "SuccessViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "LifeStyleViewController.h"
//: #import "TeamMemberNormalViewController.h"
#import "RestoreViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "TingEmptyBubble.h"
//: #import "NTESShareCardAttachment.h"
#import "LengthAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "TipViewController.h"
//: #import "NSSetAvater.h"
#import "HandleView.h"

//: @interface FFFAdvancedTeamCardViewController ()<FFFTeamMemberListCellActionDelegate,
@interface TarotCardViewController ()<DelegateMenu,
//: NIMContactSelectDelegate,
CheckBottom,
//: NIMTeamSwitchProtocol,
ContentBarProtocol,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: FFFTeamCardHeaderViewDelegate,
NameDelegate,
//: NIMTeamAnnouncementListVCDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
EnableTap,HijabDoingDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,strong) FFFTeamCardHeaderView *headerView;
@property (nonatomic,strong) PoliceSquadView *headerView;

//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @property (nonatomic, strong) UILabel *introduce;
@property (nonatomic, strong) UILabel *introduce;

//: @property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *footView;
//: @property (nonatomic, strong) ZMONSetGroupNameView *groupnameView;
@property (nonatomic, strong) WeltanschauungView *groupnameView;
//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) CollectionView *groupNickNameView;
//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) TitleView *groupAlartView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) HandleView *aleartView;

//: @end
@end

//: @implementation FFFAdvancedTeamCardViewController
@implementation TarotCardViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)reloadData {
- (void)appBeRawDataView {
    //: [super reloadData];
    [super appBeRawDataView];
}

//: - (void)didBuildTeamSwitchCell:(FFFTeamSwitchTableViewCell *)cell {
- (void)flip:(UndersideViewCell *)cell {
    //: cell.switchDelegate = self;
    cell.switchDelegate = self;
}

//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell {
- (void)compartmentTeam:(TapViewCell *)cell {
    //: cell.delegate = self;
    cell.delegate = self;
    //: cell.disableInvite = ![FFFKitUtil canInviteMemberToTeam:self.teamListManager.myTeamInfo];
    cell.disableInvite = ![TextWithUtil success:self.teamListManager.myTeamInfo];
    //: NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    //: for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.members.count) ? (cell.maxShowMemberCount) : (self.teamListManager.members.count)); i++) {
    for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.comment.count) ? (cell.maxShowMemberCount) : (self.teamListManager.comment.count)); i++) {
        //: FFFTeamCardMemberItem *obj = self.teamListManager.members[i];
        BarImageEmpty *obj = self.teamListManager.comment[i];
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        ImageOption *option = [[ImageOption alloc] init];
        //: option.session = self.teamListManager.session;
        option.session = self.teamListManager.empty;
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:obj.userId option:option];
        ViewInfo *info = [[UserKit totalSend] color:obj.userId image:option];

        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[kTeamMember] = obj;
        dic[main_originMsg] = obj;
        //: dic[kTeamMemberInfo] = info;
        dic[m_commentFormat] = info;
        //: [memberInfos addObject:dic];
        [memberInfos addObject:dic];

    }
    //: cell.infos = memberInfos;
    cell.infos = memberInfos;
}

//: #pragma mark - Data
#pragma mark - Data
//: - (NSArray<NSArray<FFFTeamCardRowItem *> *> *)buildBodyData{
- (NSArray<NSArray<SuccessItem *> *> *)bePressurePoint{
    //: NSArray *ret = nil;
    NSArray *ret = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: BOOL canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    BOOL canEdit = [TextWithUtil bracketInfo:self.teamListManager.myTeamInfo];
    //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    //: BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
    BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;

    //: FFFTeamCardRowItem *teamShareCart = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamShareCart = [[SuccessItem alloc] init];
    //: teamShareCart.title = [FFFLanguageManager getTextWithKey:@"send_group_card"];
    teamShareCart.title = [MatronymicPath colorStreetwise:[EraseData user_fortyPath]];
    //: teamShareCart.subTitle = self.teamListManager.team.teamName;
    teamShareCart.subTitle = self.teamListManager.team.teamName;
    //: teamShareCart.action = @selector(sendGroupCart);
    teamShareCart.action = @selector(dataWith);
    //: teamShareCart.rowHeight = 50.f;
    teamShareCart.rowHeight = 50.f;
    //: teamShareCart.type = TeamCardRowItemTypeCommon;
    teamShareCart.type = TeamCardRowItemTypeCommon;
//    teamShareCart.actionDisabled = !canEdit;
    //: teamShareCart.img = [UIImage imageNamed:@"ic_card_share"];
    teamShareCart.img = [UIImage imageNamed:[EraseData m_enableFormat]];

    //: FFFTeamCardRowItem *teamMembers = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamMembers = [[SuccessItem alloc] init];
    //: teamMembers.title = [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    teamMembers.title = [MatronymicPath colorStreetwise:[EraseData main_startDismissValueTitle]];
    //: teamMembers.subTitle = self.teamListManager.team.teamName;
    teamMembers.subTitle = self.teamListManager.team.teamName;
    //: teamMembers.action = @selector(enterMemberCard);
    teamMembers.action = @selector(tingDate);
    //: teamMembers.rowHeight = 50.f;
    teamMembers.rowHeight = 50.f;
    //: teamMembers.type = TeamCardRowItemTypeCommon;
    teamMembers.type = TeamCardRowItemTypeCommon;
    //: teamMembers.actionDisabled = !self.canMemberInfo;
    teamMembers.actionDisabled = !self.canMemberInfo;
    //: teamMembers.img = [UIImage imageNamed:@"ic_group_members"];
    teamMembers.img = [UIImage imageNamed:[EraseData show_fortyData]];

    //: FFFTeamCardRowItem *teamAnnoucement = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamAnnoucement = [[SuccessItem alloc] init];
    //: teamAnnoucement.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    teamAnnoucement.title = [MatronymicPath colorStreetwise:[EraseData mEtherStr]];
    //: teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    //: teamAnnoucement.action = @selector(updateTeamAnnouncement);
    teamAnnoucement.action = @selector(styleColor);
    //: teamAnnoucement.rowHeight = 50.f;
    teamAnnoucement.rowHeight = 50.f;
    //: teamAnnoucement.type = TeamCardRowItemTypeCommon;
    teamAnnoucement.type = TeamCardRowItemTypeCommon;
//    teamAnnoucement.actionDisabled = !canEdit;
    //: teamAnnoucement.img = [UIImage imageNamed:@"ic_announcement"];
    teamAnnoucement.img = [UIImage imageNamed:[EraseData user_illTextData]];

    //: FFFTeamCardRowItem *teamName = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamName = [[SuccessItem alloc] init];
    //: teamName.title = [FFFLanguageManager getTextWithKey:@"Group_name"];
    teamName.title = [MatronymicPath colorStreetwise:[EraseData m_nighWindowContent]];
    //: teamName.subTitle = self.teamListManager.team.teamName;
    teamName.subTitle = self.teamListManager.team.teamName;
    //: teamName.action = @selector(updateTeamName);
    teamName.action = @selector(isBottom);
    //: teamName.rowHeight = 50.f;
    teamName.rowHeight = 50.f;
    //: teamName.type = TeamCardRowItemTypeCommon;
    teamName.type = TeamCardRowItemTypeCommon;
    //: teamName.actionDisabled = !canEdit;
    teamName.actionDisabled = !canEdit;
    //: teamName.img = [UIImage imageNamed:@"ic_group_edit"];
    teamName.img = [UIImage imageNamed:[EraseData mChingIdent]];


    //: FFFTeamCardRowItem *teamNick = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamNick = [[SuccessItem alloc] init];
    //: teamNick.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_nick"];
    teamNick.title = [MatronymicPath colorStreetwise:[EraseData app_rangeDiseaseTitle]];
    //: teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    //: teamNick.action = @selector(updateTeamNick);
    teamNick.action = @selector(disableOrigin);
    //: teamNick.rowHeight = 50.f;
    teamNick.rowHeight = 50.f;
    //: teamNick.type = TeamCardRowItemTypeCommon;
    teamNick.type = TeamCardRowItemTypeCommon;
    //: teamNick.img = [UIImage imageNamed:@"ic_group_nick"];
    teamNick.img = [UIImage imageNamed:[EraseData app_replyId]];

    //: FFFTeamCardRowItem *teamIntro = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamIntro = [[SuccessItem alloc] init];
    //: teamIntro.title = [FFFLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
    teamIntro.title = [MatronymicPath colorStreetwise:[EraseData mTingStr]];
    //: teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [FFFLanguageManager getTextWithKey:@"team_info_set_activity_default_group_tip"] : @"");
    teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [MatronymicPath colorStreetwise:[EraseData userOffChingTitle]] : @"");
    //: teamIntro.action = @selector(updateTeamIntro);
    teamIntro.action = @selector(childModel);
    //: teamIntro.rowHeight = 50.f;
    teamIntro.rowHeight = 50.f;
    //: teamIntro.type = TeamCardRowItemTypeCommon;
    teamIntro.type = TeamCardRowItemTypeCommon;
    //: teamIntro.actionDisabled = !canEdit;
    teamIntro.actionDisabled = !canEdit;
    //: teamIntro.img = [UIImage imageNamed:@"ic_group_introduction"];
    teamIntro.img = [UIImage imageNamed:[EraseData userLineName]];

//    SuccessItem *teamAnnouncement = [[SuccessItem alloc] init];
//    teamAnnouncement.title = @"群公告".nim_localized;
//    teamAnnouncement.subTitle = @"点击查看群公告".nim_localized;
//    teamAnnouncement.action = @selector(updateTeamAnnouncement);
//    teamAnnouncement.rowHeight = 50.f;
//    teamAnnouncement.type   = TeamCardRowItemTypeCommon;
//    teamAnnouncement.img = [UIImage imageNamed:@"ic_announcement"];

    //: BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    //: FFFTeamCardRowItem *teamMute = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamMute = [[SuccessItem alloc] init];
    //: teamMute.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_mute"];
    teamMute.title = [MatronymicPath colorStreetwise:[EraseData show_animalValue]];
    //: teamMute.switchOn = inAllMuteMode;
    teamMute.switchOn = inAllMuteMode;
//    teamMute.subTitle = [HandleImageHelper teamMuteText:inAllMuteMode];
    //: teamMute.rowHeight = 50.f;
    teamMute.rowHeight = 50.f;
    //: teamMute.type = TeamCardRowItemTypeSwitch;
    teamMute.type = TeamCardRowItemTypeSwitch;
    //: teamMute.optionItems = [FFFTeamHelper teamMuteItemsWithSeleced:inAllMuteMode];
    teamMute.optionItems = [HandleImageHelper stateObject:inAllMuteMode];
    //: teamMute.actionDisabled = !canEdit;
    teamMute.actionDisabled = !canEdit;
    //: teamMute.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    teamMute.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamMute:[item.value integerValue]];
        [weakSelf overManagerVoice:[item.value integerValue]];
    //: };
    };
    //: teamMute.identify = NIMTeamCardSwithCellTypeMute;
    teamMute.identify = NIMTeamCardSwithCellTypeMute;
    //: teamMute.img = [UIImage imageNamed:@"ic_group_all"];
    teamMute.img = [UIImage imageNamed:[EraseData mainUserName]];

    //: FFFTeamCardRowItem *teamMuteList = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamMuteList = [[SuccessItem alloc] init];
    //: teamMuteList.title = [FFFLanguageManager getTextWithKey:@"group_mute_member_list_activity_title"];
    teamMuteList.title = [MatronymicPath colorStreetwise:[EraseData main_rangeComfortableId]];
    //: teamMuteList.rowHeight = 50.f;
    teamMuteList.rowHeight = 50.f;
    //: teamMuteList.type = TeamCardRowItemTypeCommon;
    teamMuteList.type = TeamCardRowItemTypeCommon;
    //: teamMuteList.action = @selector(enterMuteList);
    teamMuteList.action = @selector(viewTable);
    //: teamMuteList.img = [UIImage imageNamed:@"ic_card_black"];
    teamMuteList.img = [UIImage imageNamed:[EraseData noti_tingId]];

    //: FFFTeamCardRowItem *teamNotify = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamNotify = [[SuccessItem alloc] init];
    //: teamNotify.title = [FFFLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
    teamNotify.title = [MatronymicPath colorStreetwise:[EraseData main_stereoKeyContent]];//@"消息提醒".nim_localized;
    //: teamNotify.subTitle = [FFFTeamHelper notifyStateText:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.subTitle = [HandleImageHelper language:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.rowHeight = 50.f;
    teamNotify.rowHeight = 50.f;
    //: teamNotify.type = TeamCardRowItemTypeSelected;
    teamNotify.type = TeamCardRowItemTypeSelected;
    //: teamNotify.optionItems = [FFFTeamHelper notifyStateItemsWithSeleced:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.optionItems = [HandleImageHelper pull:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    teamNotify.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateNotifiyState:[item.value integerValue]];
        [weakSelf full:[item.value integerValue]];
    //: };
    };
    //: teamNotify.img = [UIImage imageNamed:@"ic_group_notice"];
    teamNotify.img = [UIImage imageNamed:[EraseData user_redOfName]];


    //: FFFTeamCardRowItem *itemAuth = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *itemAuth = [[SuccessItem alloc] init];
    //: itemAuth.title = [FFFLanguageManager getTextWithKey:@"authentication"];
    itemAuth.title = [MatronymicPath colorStreetwise:[EraseData showBudgeId]];
    //: itemAuth.subTitle = [FFFTeamHelper jonModeText:self.teamListManager.team.joinMode];
    itemAuth.subTitle = [HandleImageHelper die:self.teamListManager.team.joinMode];
    //: itemAuth.actionDisabled = !canEdit;
    itemAuth.actionDisabled = !canEdit;
    //: itemAuth.rowHeight = 50.f;
    itemAuth.rowHeight = 50.f;
    //: itemAuth.type = TeamCardRowItemTypeSelected;
    itemAuth.type = TeamCardRowItemTypeSelected;
    //: itemAuth.optionItems = [FFFTeamHelper joinModeItemsWithSeleced:self.teamListManager.team.joinMode];
    itemAuth.optionItems = [HandleImageHelper item:self.teamListManager.team.joinMode];
    //: itemAuth.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemAuth.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didupdateTeamJoinMode:[item.value integerValue]];
        [weakSelf lifestyle:[item.value integerValue]];
    //: };
    };
    //: itemAuth.img = [UIImage imageNamed:@"ic_identity_authentication"];
    itemAuth.img = [UIImage imageNamed:[EraseData m_celebrityName]];

    //: FFFTeamCardRowItem *itemInvite = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *itemInvite = [[SuccessItem alloc] init];
    //: itemInvite.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_invite_permission"];
    itemInvite.title = [MatronymicPath colorStreetwise:[EraseData mainWindowDataKey]];
    //: itemInvite.subTitle = [FFFTeamHelper InviteModeText:self.teamListManager.team.inviteMode];
    itemInvite.subTitle = [HandleImageHelper find:self.teamListManager.team.inviteMode];
    //: itemInvite.actionDisabled = !canEdit;
    itemInvite.actionDisabled = !canEdit;
    //: itemInvite.rowHeight = 50.f;
    itemInvite.rowHeight = 50.f;
    //: itemInvite.type = TeamCardRowItemTypeSelected;
    itemInvite.type = TeamCardRowItemTypeSelected;
    //: itemInvite.optionItems = [FFFTeamHelper InviteModeItemsWithSeleced:self.teamListManager.team.inviteMode];
    itemInvite.optionItems = [HandleImageHelper distance:self.teamListManager.team.inviteMode];
    //: itemInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInviteMode:[item.value integerValue]];
        [weakSelf inputMode:[item.value integerValue]];
    //: };
    };
    //: itemInvite.img = [UIImage imageNamed:@"ic_invite"];
    itemInvite.img = [UIImage imageNamed:[EraseData mPerfectlyPath]];

    //: FFFTeamCardRowItem *itemUpdateInfo = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *itemUpdateInfo = [[SuccessItem alloc] init];
    //: itemUpdateInfo.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_modify_permission"];
    itemUpdateInfo.title = [MatronymicPath colorStreetwise:[EraseData userCounternNameUrl]];
    //: itemUpdateInfo.subTitle = [FFFTeamHelper updateInfoModeText:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.subTitle = [HandleImageHelper topShould:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.actionDisabled = !canEdit;
    itemUpdateInfo.actionDisabled = !canEdit;
    //: itemUpdateInfo.rowHeight = 50.f;
    itemUpdateInfo.rowHeight = 50.f;
    //: itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    //: itemUpdateInfo.optionItems = [FFFTeamHelper updateInfoModeItemsWithSeleced:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.optionItems = [HandleImageHelper off:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemUpdateInfo.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInfoMode:[item.value integerValue]];
        [weakSelf holderMode:[item.value integerValue]];
    //: };
    };
    //: itemUpdateInfo.img = [UIImage imageNamed:@"ic_modify"];
    itemUpdateInfo.img = [UIImage imageNamed:[EraseData appBubblePath]];

    //: FFFTeamCardRowItem *itemBeInvite = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *itemBeInvite = [[SuccessItem alloc] init];
    //: itemBeInvite.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_invite_verify"];
    itemBeInvite.title = [MatronymicPath colorStreetwise:[EraseData userQuarterbackMsg]];
    //: itemBeInvite.subTitle = [FFFTeamHelper beInviteModeText:self.teamListManager.team.beInviteMode];
    itemBeInvite.subTitle = [HandleImageHelper cell:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.actionDisabled = !canEdit;
    itemBeInvite.actionDisabled = !canEdit;
    //: itemBeInvite.rowHeight = 50.f;
    itemBeInvite.rowHeight = 50.f;
    //: itemBeInvite.type = TeamCardRowItemTypeSelected;
    itemBeInvite.type = TeamCardRowItemTypeSelected;
    //: itemBeInvite.optionItems = [FFFTeamHelper beInviteModeItemsWithSeleced:self.teamListManager.team.beInviteMode];
    itemBeInvite.optionItems = [HandleImageHelper quickSeleced:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemBeInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamBeInviteMode:[item.value integerValue]];
        [weakSelf titleer:[item.value integerValue]];
    //: };
    };
    //: itemBeInvite.img = [UIImage imageNamed:@"ic_invitee_verification"];
    itemBeInvite.img = [UIImage imageNamed:[EraseData mNighUserStr]];

    //: FFFTeamCardRowItem *itemTop = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *itemTop = [[SuccessItem alloc] init];
    //: itemTop.title = [FFFLanguageManager getTextWithKey:@"Chat_settop"];
    itemTop.title = [MatronymicPath colorStreetwise:[EraseData dream_backFormat]];
    //: itemTop.switchOn = self.option.isTop;
    itemTop.switchOn = self.option.isTop;
    //: itemTop.rowHeight = 50.f;
    itemTop.rowHeight = 50.f;
    //: itemTop.type = TeamCardRowItemTypeSwitch;
    itemTop.type = TeamCardRowItemTypeSwitch;
    //: itemTop.identify = NIMTeamCardSwithCellTypeTop;
    itemTop.identify = NIMTeamCardSwithCellTypeTop;
    //: itemTop.img = [UIImage imageNamed:@"ic_group_top"];
    itemTop.img = [UIImage imageNamed:[EraseData userNeedFormat]];

//        SuccessItem *itemQuit = [[SuccessItem alloc] init];
//        itemQuit.title = @"退出高级群".nim_localized;
//        itemQuit.action = @selector(quitTeam);
//        itemQuit.rowHeight = 50.f;
//        itemQuit.type   = TeamCardRowItemTypeRedButton;
//    itemQuit.img = [UIImage imageNamed:@"ic_announcement"];

        //: FFFTeamCardRowItem *itemDismiss = [[FFFTeamCardRowItem alloc] init];
        SuccessItem *itemDismiss = [[SuccessItem alloc] init];
        //: itemDismiss.title = [FFFLanguageManager getTextWithKey:@"group_info_activity_jiesan"];
        itemDismiss.title = [MatronymicPath colorStreetwise:[EraseData notiEraseName]];
        //: itemDismiss.action = @selector(dismissTeam);
        itemDismiss.action = @selector(queryedContainer);
        //: itemDismiss.rowHeight = 50.f;
        itemDismiss.rowHeight = 50.f;
        //: itemDismiss.type = TeamCardRowItemTypeRedButton;
        itemDismiss.type = TeamCardRowItemTypeRedButton;
    //: itemDismiss.img = [UIImage imageNamed:@"ic_announcement"];
    itemDismiss.img = [UIImage imageNamed:[EraseData user_illTextData]];

    //: FFFTeamCardRowItem *teamChange = [[FFFTeamCardRowItem alloc] init];
    SuccessItem *teamChange = [[SuccessItem alloc] init];
    //: teamChange.title = [FFFLanguageManager getTextWithKey:@"Transfer_group_ownership"];
    teamChange.title = [MatronymicPath colorStreetwise:[EraseData k_diseaseValue]];
    //: teamChange.rowHeight = 50.f;
    teamChange.rowHeight = 50.f;
    //: teamChange.type = TeamCardRowItemTypeCommon;
    teamChange.type = TeamCardRowItemTypeCommon;
    //: teamChange.action = @selector(onMore);
    teamChange.action = @selector(messageMessage);
    //: teamChange.img = [UIImage imageNamed:@"ic_group_transfer"];
    teamChange.img = [UIImage imageNamed:[EraseData appToilValue]];


    //: if (isOwner) {
    if (isOwner) {
        //: ret = @[
        ret = @[
                  //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  //: @[teamMuteList,teamMute,itemTop],
                  @[teamMuteList,teamMute,itemTop],
                 //: ];
                 ];
    //: } else if (isManager){
    } else if (isManager){
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            //: @[teamMuteList,teamMute,itemTop],
            @[teamMuteList,teamMute,itemTop],
              //: ];
              ];
    //: } else {
    } else {
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify],
            @[teamNotify],
            //: @[itemTop],
            @[itemTop],
               //: ];
               ];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Refresh
#pragma mark - Refresh
//: - (void)reloadTableViewData {
- (void)progress {
    //: self.datas = [self buildBodyData];
    self.datas = [self bePressurePoint];
    //: self.tableView.tableHeaderView = self.userView;
    self.tableView.tableHeaderView = self.userView;
    //: self.tableView.tableFooterView = self.footView;
    self.tableView.tableFooterView = self.footView;
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)sendGroupCart
- (void)dataWith
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    LengthAttachment *attachment = [[LengthAttachment alloc] init];
    //: attachment.title = self.teamListManager.team.teamName;
    attachment.title = self.teamListManager.team.teamName;
    //: attachment.type = @"1";
    attachment.type = @"1";
    //: attachment.personCardId = self.teamListManager.team.teamId;
    attachment.personCardId = self.teamListManager.team.teamId;
    //: attachment.content = @"";
    attachment.content = @"";
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [TingEmptyBubble compartmentCard:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    TipViewController *vc = [[TipViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onMore{
- (void)messageMessage{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *action0 = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_give_group"]//@"转让群".nim_localized
    UIAlertAction *action0 = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[EraseData main_scaleOffId]]//@"转让群".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:NO];
        [weakSelf cherry:NO];
    //: }];
    }];

    //: UIAlertAction *action1 = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"Transfer_group_exit"] //@"转让群并退出".nim_localized
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[EraseData mByKey]] //@"转让群并退出".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:YES];
        [weakSelf cherry:YES];
    //: }];
    }];

    //: UIAlertController *alert = [self makeAlertSheetWithTitle:[FFFLanguageManager getTextWithKey:@"please_choose"]//@"请操作".nim_localized
    UIAlertController *alert = [self circle:[MatronymicPath colorStreetwise:[EraseData appTeamData]]//@"请操作".nim_localized
                                                     //: actions:@[action0, action1]];
                                                     extra:@[action0, action1]];
    //: [self showAlert:alert];
    [self scale:alert];
}

//- (void)onTouchAvatar {
//    if(![TextWithUtil canEditTeamInfo:self.teamListManager.myTeamInfo])
//        return ;
//    __weak typeof(self) weakSelf = self;
//    UIAlertAction *action0 = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypeCamera];
//    }];
//    
//    UIAlertAction *action1 = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypePhotoLibrary];
//    }];
//    
//    UIAlertController *alert = [self makeAlertSheetWithTitle:LangKey(@"set_group_avater")
//                                                     actions:@[action0, action1]];
//    [self showAlert:alert];
//}

//: - (void)updateTeamName{
- (void)isBottom{

    //: [self.view addSubview:self.groupnameView];
    [self.view addSubview:self.groupnameView];
    //: [self.groupnameView reloadWithNickname:self.teamListManager.team.teamName];
    [self.groupnameView row:self.teamListManager.team.teamName];
    //: [self.groupnameView animationShow];
    [self.groupnameView messageShow];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupnameView.speiceBackBlock = ^(NSString *groupName){
        self.groupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamName:groupName];
            [self text:groupName];

            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: dict[@"id"] = self.teamListManager.team.teamId;
            dict[@"id"] = self.teamListManager.team.teamId;
            //: dict[@"name"] = emptyString(groupName);
            dict[[EraseData mViewPath]] = leftEvent(groupName);
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyname"] params:dict isShow:NO success:^(id responseObject) {
            [TroublingName allowFailed:[NSString stringWithFormat:[EraseData mAnimalUsTitle]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
                //: [self reloadData];
                [self appBeRawDataView];
                //: self.accountNickname.text = groupName;
                self.accountNickname.text = groupName;
            //: } failed:^(id responseObject, NSError *error) {
            } size:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupnameView animationClose];
            [self.groupnameView animationEnableClose];
        //: };
        };

}

//: - (void)updateTeamNick
- (void)disableOrigin
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView list];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamNick:Name];
            [self nameSystem:Name];
            //: [self.groupNickNameView animationClose];
            [self.groupNickNameView animationEnableClose];
        //: };
        };
}

//: - (void)updateTeamIntro
- (void)childModel
{
    //: FFFTeamIntroduceViewController *vc = [[FFFTeamIntroduceViewController alloc] init];
    GroundViewController *vc = [[GroundViewController alloc] init];
    //: vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    //: vc.canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    vc.canEdit = [TextWithUtil bracketInfo:self.teamListManager.myTeamInfo];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: vc.speiceBackBlock = ^(NSString *Introduce){
    vc.speiceBackBlock = ^(NSString *Introduce){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self didUpdateTeamIntro:Introduce];
        [self totalernational:Introduce];

        //: _introduce.text = Introduce;
        _introduce.text = Introduce;
    //: };
    };
}

//: - (void)updateTeamAnnouncement{
- (void)styleColor{
    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
    ArrayAsset *option = [[ArrayAsset alloc] init];
    //: option.canCreateAnnouncement = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    option.canCreateAnnouncement = [TextWithUtil bracketInfo:self.teamListManager.myTeamInfo];
    //: option.announcement = self.teamListManager.team.announcement;
    option.announcement = self.teamListManager.team.announcement;
    //: option.nick = self.teamListManager.myTeamInfo.nickname;
    option.nick = self.teamListManager.myTeamInfo.nickname;
    //: option.team = self.teamListManager.team;
    option.team = self.teamListManager.team;

    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
    AnnouncementViewController *vc = [[AnnouncementViewController alloc] initWithDisplayCenter:option];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)quitTeam {
- (void)confirmationTeam {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"queren_quit_group"] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[MatronymicPath colorStreetwise:[EraseData show_frameValue]] preferredStyle:UIAlertControllerStyleAlert];
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"queren"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[MatronymicPath colorStreetwise:[EraseData main_wheatPath]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didQuitTeam];
        [weakSelf with];
    //: }];
    }];
    //: [alert addAction:sure];
    [alert addAction:sure];
    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self bluish]];
    //: [self showAlert:alert];
    [self scale:alert];
}

//: - (void)dismissTeam {
- (void)queryedContainer {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"Confirm_dismiss_group_chat"]];
    [self.groupAlartView viewFor:[MatronymicPath colorStreetwise:[EraseData mToilUrl]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView item];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didDismissTeam];
            [self beginTeam];
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/destory"] params:@{@"id":self.teamListManager.team.teamId} isShow:NO success:^(id responseObject) {
            [TroublingName allowFailed:[NSString stringWithFormat:[EraseData main_illIdent]] table:@{@"id":self.teamListManager.team.teamId} carteDuJour:NO behindValue:^(id responseObject) {

            //: } failed:^(id responseObject, NSError *error) {
            } size:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView animationEnableClose];
        //: };
        };
}

//: - (void)enterMemberCard{
- (void)tingDate{

    //: if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: CCCTeamMemberListViewController *vc = [[CCCTeamMemberListViewController alloc] initWithDataSource:self.teamListManager];
        AssetViewController *vc = [[AssetViewController alloc] initWithBubble:self.teamListManager];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }else{
    }else{
        //: TeamMemberNormalViewController *vc = [[TeamMemberNormalViewController alloc]init];
        RestoreViewController *vc = [[RestoreViewController alloc]init];
        //: vc.teamListManager = self.teamListManager;
        vc.teamListManager = self.teamListManager;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)enterMuteList
- (void)viewTable
{
    //: FFFTeamMuteMemberListViewController *vc = [[FFFTeamMuteMemberListViewController alloc] init];
    AViewController *vc = [[AViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - NIMTeamSwitchProtocol
#pragma mark - ContentBarProtocol
//: - (void)cell:(FFFTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on{
- (void)time:(UndersideViewCell *)cell markBackgroundChanged:(BOOL)on{
    //: if (cell.identify == NIMTeamCardSwithCellTypeTop) {
    if (cell.identify == NIMTeamCardSwithCellTypeTop) {
        //: if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetTop:)]) {
        if ([self.delegate respondsToSelector:@selector(quantityervalTo:)]) {
            //: [self.delegate NIMTeamCardVCDidSetTop:on];
            [self.delegate quantityervalTo:on];
        }
    }
    //: if (cell.identify == NIMTeamCardSwithCellTypeMute) {
    if (cell.identify == NIMTeamCardSwithCellTypeMute) {
//        if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetMute:)]) {
//            [self.delegate NIMTeamCardVCDidSetMute:on];
//        }
//        [self didUpdateTeamMute:on];
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:on
        [[NIMSDK sharedSDK].teamManager updateMuteState:on
                                                 //: inTeam:self.teamListManager.team.teamId
                                                 inTeam:self.teamListManager.team.teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [MatronymicPath colorStreetwise:[EraseData user_operationPath]];
            //: }else{
            }else{
                //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [MatronymicPath colorStreetwise:[EraseData m_coverPath]];
            }
            //: [self showToastMsg:msg];
            [self info:msg];
        //: }];
        }];
    }
}

//: #pragma mark - NIMTeamAnnouncementListVCDelegate
#pragma mark - EnableTap
//: - (void)didUpdateAnnouncement:(NSString *)content
- (void)enable:(NSString *)content
                   //: completion:(void (^)(NSError *error))completion {
                   key:(void (^)(NSError *error))completion {
    //: [self.teamListManager updateTeamAnnouncement:content
    [self.teamListManager showMessage:content
                             //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                             cut:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: if (completion) {
        if (completion) {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: #pragma mark - FFFTeamMemberListCellActionDelegate
#pragma mark - DelegateMenu
//: - (void)didSelectAddOpeartor{
- (void)sendName{
    //: NSMutableArray *users = [self.teamListManager memberIds];
    NSMutableArray *users = [self.teamListManager memberIds];
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: [users addObject:currentUserID];
    [users addObject:currentUserID];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    BottomBar *config = [[BottomBar alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc frame];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)caned:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self backgroundClear:selectedContacts perspective:nil];
}

//: #pragma mark - Function
#pragma mark - Function
//: - (void)didOntransferWithLeave:(BOOL)isLeave {
- (void)cherry:(BOOL)isLeave {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
    __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
        //: NSString *newOwnerId = memeber.firstObject;
        NSString *newOwnerId = memeber.firstObject;
        //: [wself didOntransferToUser:newOwnerId leave:isLeave];
        [wself leavePolicy:newOwnerId pop:isLeave];
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"id"] = self.teamListManager.team.teamId;
        dict[@"id"] = self.teamListManager.team.teamId;
        //: dict[@"new_owner_id"] = newOwnerId;
        dict[[EraseData dreamLayerStr]] = newOwnerId;
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyowner"] params:dict isShow:NO success:^(id responseObject) {
        [TroublingName allowFailed:[NSString stringWithFormat:[EraseData mIllKey]] table:dict carteDuJour:NO behindValue:^(id responseObject) {
            //: [wself reloadData];
            [wself appBeRawDataView];
        //: } failed:^(id responseObject, NSError *error) {
        } size:^(id responseObject, NSError *error) {

        //: }];
        }];
    //: };
    };
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
    ImageLength *config = [[ImageLength alloc] init];
    //: config.session = self.teamListManager.session;
    config.session = self.teamListManager.empty;
    //: config.teamType = NIMKitTeamTypeNomal;
    config.teamType = NIMKitTeamTypeNomal;
    //: config.teamId = self.teamListManager.team.teamId;
    config.teamId = self.teamListManager.team.teamId;
    //: config.filterIds = @[currentUserID];
    config.filterIds = @[currentUserID];
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    TingViewController *vc = [[TingViewController alloc] initWithStreetwiseRequest:config];
    //: vc.finshBlock = finishBlock;
    vc.finshBlock = finishBlock;
    //: [vc show];
    [vc frame];
}

//: -(void)handlerClear
-(void)lucidTingSearched
{
    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"clear_history"]];
    [self.groupAlartView viewFor:[MatronymicPath colorStreetwise:[EraseData main_sizeFormat]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView item];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.empty options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self.navigationController popToRootViewControllerAnimated:YES];
                [self.navigationController popToRootViewControllerAnimated:YES];

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView animationEnableClose];
        //: };
        };


}
//: - (void)handleQrbtn
- (void)permissionTop
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    LifeStyleViewController *vc = [[LifeStyleViewController alloc] init];
    //: vc.isTeam = YES;
    vc.isTeam = YES;
    //: vc.team = self.teamListManager.team;
    vc.team = self.teamListManager.team;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTouchAvatar
- (void)demonstrateValue
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView green];
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)cured:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self format:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self format:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)format:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf hold:image];
    //: weakSelf.accountheadImg.image = image;
    weakSelf.accountheadImg.image = image;
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)uploadImage:(UIImage *)image
- (void)hold:(UIImage *)image
{
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image everyBubble:CGSizeMake(150, 150)];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[EraseData show_flameKey]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager assemblage:filePath upward:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: [wself showToastMsg:msg];
            [wself info:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:@"图片保存失败，请重试".nim_localized];
        [wself info:[EraseData showImageChingMessage].resign];
    }
}
//: #pragma mark - Getter
#pragma mark - Getter
//: - (NSSetAvater *)aleartView{
- (HandleView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[HandleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice vg_statusBarHeight])];
        _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice bearDown])];
        //: [_userView setBackgroundColor:[UIColor clearColor]];
        [_userView setBackgroundColor:[UIColor clearColor]];

        //: UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        //: infoView.backgroundColor = [UIColor whiteColor];
        infoView.backgroundColor = [UIColor whiteColor];
        //: infoView.layer.cornerRadius = 12;
        infoView.layer.cornerRadius = 12;
        //: infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: infoView.layer.shadowOffset = CGSizeMake(0,4);
        infoView.layer.shadowOffset = CGSizeMake(0,4);
        //: infoView.layer.shadowOpacity = 1;
        infoView.layer.shadowOpacity = 1;
        //: infoView.layer.shadowRadius = 16;
        infoView.layer.shadowRadius = 16;
        //: [_userView addSubview:infoView];
        [_userView addSubview:infoView];

        //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        //: [infoView addSubview:imgView];
        [infoView addSubview:imgView];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [imgView addSubview:self.accountheadImg];
        [imgView addSubview:self.accountheadImg];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:[EraseData main_guyName]]];
        //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
        [cameraicon setImage:[UIImage imageNamed:[EraseData userOrangeMessage]] forState:(UIControlStateNormal)];
        //: cameraicon.layer.cornerRadius = 14;
        cameraicon.layer.cornerRadius = 14;
        //: cameraicon.layer.masksToBounds = YES;
        cameraicon.layer.masksToBounds = YES;
        //: [imgView addSubview:cameraicon];
        [imgView addSubview:cameraicon];
        //: cameraicon.hidden = YES;
        cameraicon.hidden = YES;
        //: [cameraicon addTarget:self action:@selector(onTouchAvatar) forControlEvents:(UIControlEventTouchUpInside)];
        [cameraicon addTarget:self action:@selector(demonstrateValue) forControlEvents:(UIControlEventTouchUpInside)];
        //: if([FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([TextWithUtil bracketInfo:self.teamListManager.myTeamInfo]){
            //: cameraicon.hidden = NO;
            cameraicon.hidden = NO;
        }

        //: UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        //: [editBtn setImage:[UIImage imageNamed:@"group_edit"] forState:(UIControlStateNormal)];
        [editBtn setImage:[UIImage imageNamed:[EraseData noti_grayKey]] forState:(UIControlStateNormal)];
        //: [editBtn addTarget:self action:@selector(updateTeamIntro) forControlEvents:(UIControlEventTouchUpInside)];
        [editBtn addTarget:self action:@selector(childModel) forControlEvents:(UIControlEventTouchUpInside)];
        //: [infoView addSubview:editBtn];
        [infoView addSubview:editBtn];
        //: editBtn.hidden = YES;
        editBtn.hidden = YES;
        //: if([FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([TextWithUtil bracketInfo:self.teamListManager.myTeamInfo]){
            //: editBtn.hidden = NO;
            editBtn.hidden = NO;
        }

//        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
//        QrBtn.frame = CGRectMake(SCREEN_WIDTH-30-15-36, 15, 36, 36);
////        QrBtn.backgroundColor = [UIColor whiteColor];
//        [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
//        [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
//        QrBtn.layer.cornerRadius = 8;
//        [infoView addSubview:QrBtn];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        //: self.accountNickname.font = [UIFont systemFontOfSize:20];
        self.accountNickname.font = [UIFont systemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: self.accountNickname.text = self.teamListManager.team.teamName;
        self.accountNickname.text = self.teamListManager.team.teamName;
        //: [infoView addSubview:self.accountNickname];
        [infoView addSubview:self.accountNickname];

        //: _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        //: _introduce.font = [UIFont systemFontOfSize:14];
        _introduce.font = [UIFont systemFontOfSize:14];
        //: _introduce.textColor = [UIColor colorWithHexString:@"2C3042"];
        _introduce.textColor = [UIColor recordView:[EraseData user_flameReleaseMsg]];
        //: _introduce.textAlignment = NSTextAlignmentCenter;
        _introduce.textAlignment = NSTextAlignmentCenter;
        //: _introduce.text = self.teamListManager.team.intro?:[FFFLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
        _introduce.text = self.teamListManager.team.intro?:[MatronymicPath colorStreetwise:[EraseData mTingStr]];
        //: _introduce.numberOfLines = 0;
        _introduce.numberOfLines = 0;
        //: [infoView addSubview:_introduce];
        [infoView addSubview:_introduce];


    }
    //: return _userView;
    return _userView;
}
//: - (UIView *)footView{
- (UIView *)footView{
    //: if(!_footView){
    if(!_footView){
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        //: _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];
        _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];

        //: UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnClear.frame = CGRectMake(0, 0, width, 44);
        btnClear.frame = CGRectMake(0, 0, width, 44);
        //: btnClear.backgroundColor = [UIColor whiteColor];
        btnClear.backgroundColor = [UIColor whiteColor];
        //: btnClear.layer.cornerRadius = 24;
        btnClear.layer.cornerRadius = 24;
        //: btnClear.layer.borderWidth = 1;
        btnClear.layer.borderWidth = 1;
        //: btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnClear setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnClear setTitleColor:[UIColor recordView:[EraseData showQueryData]] forState:UIControlStateNormal];
        //: [btnClear setTitle:[FFFLanguageManager getTextWithKey:@"activity_user_profile_clear_chat"] forState:UIControlStateNormal];
        [btnClear setTitle:[MatronymicPath colorStreetwise:[EraseData dreamOrangeTitle]] forState:UIControlStateNormal];
//        [btnClear setImage:[UIImage imageNamed:@"ic_clear"] forState:UIControlStateNormal];
        //: [btnClear addTarget:self action:@selector(handlerClear) forControlEvents:UIControlEventTouchUpInside];
        [btnClear addTarget:self action:@selector(lucidTingSearched) forControlEvents:UIControlEventTouchUpInside];
        //: [_footView addSubview:btnClear];
        [_footView addSubview:btnClear];


        //: UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        //: btnDet.backgroundColor = [UIColor whiteColor];
        btnDet.backgroundColor = [UIColor whiteColor];
        //: btnDet.layer.cornerRadius = 24;
        btnDet.layer.cornerRadius = 24;
        //: btnDet.layer.borderWidth = 1;
        btnDet.layer.borderWidth = 1;
        //: btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnDet setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnDet setTitleColor:[UIColor recordView:[EraseData showQueryData]] forState:UIControlStateNormal];
        //: [_footView addSubview:btnDet];
        [_footView addSubview:btnDet];

        //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        //: if(isOwner){
        if(isOwner){
//            [btnDet setImage:[UIImage imageNamed:@"ic_release"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_jiesan"] forState:UIControlStateNormal];
            [btnDet setTitle:[MatronymicPath colorStreetwise:[EraseData notiEraseName]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(dismissTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(queryedContainer) forControlEvents:UIControlEventTouchUpInside];
        //: }else{
        }else{
//            [btnDet setImage:[UIImage imageNamed:@"ic_exit"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_exit"] forState:UIControlStateNormal];
            [btnDet setTitle:[MatronymicPath colorStreetwise:[EraseData mTeamValue]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(quitTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(confirmationTeam) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    //: return _footView;
    return _footView;
}

//: - (ZMONSetGroupNameView *)groupnameView
- (WeltanschauungView *)groupnameView
{
    //: if(!_groupnameView){
    if(!_groupnameView){
        //: _groupnameView = [[ZMONSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupnameView = [[WeltanschauungView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupnameView;
    return _groupnameView;
}

//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (CollectionView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[CollectionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}

//: - (ZMONAlartView *)groupAlartView{
- (TitleView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[TitleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}

//: @end
@end