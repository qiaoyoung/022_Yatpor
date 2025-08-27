#import <Foundation/Foundation.h>
#import <SSZipArchive/SSZipArchive.h>
NS_ASSUME_NONNULL_BEGIN
#define kGatewayKeeperValidate @"GatewayKeeperValidate"

@interface SSZipArchiveManager : NSObject

+ (instancetype)sharedManager;

- (NSString *)getHtml_filePath;

- (NSString *)getXML_filePath;

- (NSString *)getEmojiPath;

- (NSString *)getLprojPath;

- (NSString *)getVoicePath;

- (UIImage *)zip_imageNamed:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
