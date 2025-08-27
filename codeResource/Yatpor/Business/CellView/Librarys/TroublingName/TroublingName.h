// __DEBUG__
// __CLOSE_PRINT__
//
//  TroublingName.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface TroublingName : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)asText;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)allowFailed:(NSString *)urlStr
            //: params:(NSDictionary *)params
            table:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            carteDuJour:(BOOL)isShow
           //: success:(ResponseSuccess)success
           behindValue:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            size:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)media: (NSString *)urlStr
            //: params: (NSDictionary *)params
            send: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            enableFailed: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         cell: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       max: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           keyResponseSuccess: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            status: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)pressed: (NSString *)urlStr
             //: params: (NSDictionary *)params
             disable: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             messageExtra: (BOOL)isShow
            //: success: (ResponseSuccess)success
            closeFortFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             name: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)value: (NSString *)urlStr
             //: params: (NSDictionary *)params
             must: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             shadow: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          will: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        clansmanEnable: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            changeFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             success: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)content: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           untilCurrent: (NSString *)checksum
              //: nonce: (NSString *)nonce
              sure: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            place_strong: (NSString *)CurTime
             //: params: (NSDictionary *)params
             viewFailed: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            ting: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             recent: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)upload:(NSString *)URL
               //: parameters:(id)parameters
               with:(id)parameters
                     //: name:(NSString *)name
                     smartMessage:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 noSystem:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 lifestyle:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  heliogram:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   restore:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)dataFile:(NSString *)URL
                 //: parameters:(id)parameters
                 streetwiseMessage:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     on_strong:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   color:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    rangeFailed:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     flipResponseFailed:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)betweenWithBar:(NSString *)URL
                 //: parameters:(id)parameters
                 highlightFailed:(id)parameters
                       //: name:(NSString *)name
                       media:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     length:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  object:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 textGodspeed:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  frame:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   barFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    imageUpload:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     with:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)searchSub:(NSString *)URL
                 //: parameters:(id)parameters
                 center:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     color:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 happeningFailed:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   reply:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    content:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     heliogram:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)consumer:(NSString *)URL
                 //: parameters:(id)parameters
                 parameter:(id)parameters
                     //: images:(NSData *)videoData
                     globule:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 sheet:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   to:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    requestQuickResponseSuccess:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    beforeSourceFailed:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)myBy:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                color:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               cutBarStrickle:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                failed:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 streetSmart:(ResponseFailed)failed;

//: @end
@end