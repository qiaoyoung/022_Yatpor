
#import <Foundation/Foundation.h>

@interface TingCheckData : NSObject

@end

@implementation TingCheckData

+ (NSData *)TingCheckDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)TingCheckDataToCache:(Byte *)data {
    int pod = data[0];
    Byte miniBusy = data[1];
    int adequateBallot = data[2];
    for (int i = adequateBallot; i < adequateBallot + pod; i++) {
        int value = data[i] - miniBusy;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[adequateBallot + pod] = 0;
    return data + adequateBallot;
}

+ (NSString *)StringFromTingCheckData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TingCheckDataToCache:data]];
}

//: GatewayKeeperValidate
+ (NSString *)app_stopTitle {
    /* static */ NSString *app_stopTitle = nil;
    if (!app_stopTitle) {
		NSString *origin = @"1548038fa9bcadbfa9c193adadb8adba9ea9b4b1aca9bcad66";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_stopTitle = [self StringFromTingCheckData:value];
    }
    return app_stopTitle;
}

//: %@.imageset
+ (NSString *)user_hoeUrl {
    /* static */ NSString *user_hoeUrl = nil;
    if (!user_hoeUrl) {
		NSString *origin = @"0b460b6d1960783de281636b8674afb3a7adabb9abba22";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_hoeUrl = [self StringFromTingCheckData:value];
    }
    return user_hoeUrl;
}

//: %@@%dx.png
+ (NSString *)userRangeWindowFormat {
    /* static */ NSString *userRangeWindowFormat = nil;
    if (!userRangeWindowFormat) {
		NSString *origin = @"0a430aadf2d66fbe999268838368a7bb71b3b1aa01";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRangeWindowFormat = [self StringFromTingCheckData:value];
    }
    return userRangeWindowFormat;
}

//: Voice
+ (NSString *)appBladeScripIdent {
    /* static */ NSString *appBladeScripIdent = nil;
    if (!appBladeScripIdent) {
		NSString *origin = @"054704929db6b0aaaca6";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appBladeScripIdent = [self StringFromTingCheckData:value];
    }
    return appBladeScripIdent;
}

//: .zip
+ (NSString *)show_windowClayMessage {
    /* static */ NSString *show_windowClayMessage = nil;
    if (!show_windowClayMessage) {
		NSString *origin = @"042304ad519d8c93b0";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_windowClayMessage = [self StringFromTingCheckData:value];
    }
    return show_windowClayMessage;
}

//: kSSZipArchiveManagerVersionKey
+ (NSString *)noti_northernUrl {
    /* static */ NSString *noti_northernUrl = nil;
    if (!noti_northernUrl) {
		NSString *origin = @"1e3209dd35b3f702849d85858c9ba273a4959a9ba8977f93a0939997a48897a4a59ba1a07d97ab91";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_northernUrl = [self StringFromTingCheckData:value];
    }
    return noti_northernUrl;
}

//: html
+ (NSString *)dreamTingMessage {
    /* static */ NSString *dreamTingMessage = nil;
    if (!dreamTingMessage) {
		NSString *origin = @"042e043c96a29b9a49";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamTingMessage = [self StringFromTingCheckData:value];
    }
    return dreamTingMessage;
}

//: %@.png
+ (NSString *)mainHarassmentValue {
    /* static */ NSString *mainHarassmentValue = nil;
    if (!mainHarassmentValue) {
		NSString *origin = @"064e07e37ec591738e7cbebcb556";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainHarassmentValue = [self StringFromTingCheckData:value];
    }
    return mainHarassmentValue;
}

//: xml_file
+ (NSString *)main_claimIdent {
    /* static */ NSString *main_claimIdent = nil;
    if (!main_claimIdent) {
		NSString *origin = @"085503cdc2c1b4bbbec1baaf";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_claimIdent = [self StringFromTingCheckData:value];
    }
    return main_claimIdent;
}

//: file
+ (NSString *)main_sparkMessage {
    /* static */ NSString *main_sparkMessage = nil;
    if (!main_sparkMessage) {
		NSString *origin = @"040606e1a7d06c6f726b1c";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_sparkMessage = [self StringFromTingCheckData:value];
    }
    return main_sparkMessage;
}

//: Image
+ (NSString *)mToilWheatIdent {
    /* static */ NSString *mToilWheatIdent = nil;
    if (!mToilWheatIdent) {
		NSString *origin = @"05370a0f35da77605a3480a4989e9c10";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mToilWheatIdent = [self StringFromTingCheckData:value];
    }
    return mToilWheatIdent;
}

//: Emoji
+ (NSString *)mCommentMessage {
    /* static */ NSString *mCommentMessage = nil;
    if (!mCommentMessage) {
		NSString *origin = @"055e0ab787e4adc61565a3cbcdc8c76e";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCommentMessage = [self StringFromTingCheckData:value];
    }
    return mCommentMessage;
}

//: Lproj
+ (NSString *)k_withMsg {
    /* static */ NSString *k_withMsg = nil;
    if (!k_withMsg) {
		NSString *origin = @"054f08a08f661f069bbfc1beb919";
		NSData *data = [TingCheckData TingCheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_withMsg = [self StringFromTingCheckData:value];
    }
    return k_withMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "EqualArchiveManager.h"
//: #import "NTESMigrateHeader.h"
#import "NameTo.h"

//: @interface SSZipArchiveManager()
@interface EqualArchiveManager()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation EqualArchiveManager

//: + (instancetype)sharedManager {
+ (instancetype)message {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static EqualArchiveManager *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static EqualArchiveManager *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)mentalImage:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self button];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)button {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"GatewayKeeperValidate"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:[TingCheckData app_stopTitle]];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:[TingCheckData noti_northernUrl]];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[NameTo initWithShould].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"GatewayKeeperValidate"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:[TingCheckData main_sparkMessage]] stringByAppendingPathComponent:[TingCheckData app_stopTitle]];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[NameTo initWithShould].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"GatewayKeeperValidate" ofType:@".zip"];
    NSString *path = [[UserKit totalSend].emoticonBundle pathForResource:[TingCheckData app_stopTitle] ofType:[TingCheckData show_windowClayMessage]];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                      //: password:@"GatewayKeeperValidate"
                                      password:[TingCheckData app_stopTitle]
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[NameTo initWithShould].appVersion forKey:[TingCheckData noti_northernUrl]];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)key {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:[TingCheckData dreamTingMessage]];
}

//: - (NSString *)getXML_filePath {
- (NSString *)statusMyPath {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:[TingCheckData main_claimIdent]];
}

//: - (NSString *)getEmojiPath {
- (NSString *)emoji {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:[TingCheckData mCommentMessage]];
}

//: - (NSString *)getLprojPath {
- (NSString *)pull {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:[TingCheckData k_withMsg]];
}

//: - (NSString *)getVoicePath {
- (NSString *)container {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:[TingCheckData appBladeScripIdent]];
}

//: - (NSString *)getImagesPath {
- (NSString *)be {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:[TingCheckData mToilWheatIdent]];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)barCellMedia:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self be] stringByAppendingPathComponent:[NSString stringWithFormat:[TingCheckData user_hoeUrl], name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:[TingCheckData userRangeWindowFormat], name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:[TingCheckData userRangeWindowFormat], name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:[TingCheckData mainHarassmentValue], name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end