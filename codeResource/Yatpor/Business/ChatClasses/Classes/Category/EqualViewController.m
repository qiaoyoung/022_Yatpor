
#import <Foundation/Foundation.h>
typedef struct {
    Byte smallSenior;
    Byte *hanging;
    unsigned int solar;
    Byte compensatorySpending;
} DirectlyData;

NSString *StringFromDirectlyData(DirectlyData *data);


//: LaunchImage
DirectlyData main_chingHoeUrl = (DirectlyData){146, (Byte []){222, 243, 231, 252, 241, 250, 219, 255, 243, 245, 247, 189}, 11, 183};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "WaitViewController.h"
#import "EqualViewController.h"

//: @interface WaitViewController ()
@interface EqualViewController ()

//: @end
@end

//: @implementation WaitViewController
@implementation EqualViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bgImgV = [[UIImageView alloc] init];
    UIImageView *bgImgV = [[UIImageView alloc] init];
    //: bgImgV.image = [UIImage imageNamed:@"LaunchImage"];
    bgImgV.image = [UIImage imageNamed:StringFromDirectlyData(&main_chingHoeUrl)];
    //: bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: [self.view addSubview:bgImgV];
    [self.view addSubview:bgImgV];
}

//: @end
@end

Byte *DirectlyDataToByte(DirectlyData *data) {
    if (data->compensatorySpending < 146) return data->hanging;
    for (int i = 0; i < data->solar; i++) {
        data->hanging[i] ^= data->smallSenior;
    }
    data->hanging[data->solar] = 0;
    data->compensatorySpending = 22;
    return data->hanging;
}

NSString *StringFromDirectlyData(DirectlyData *data) {
    return [NSString stringWithUTF8String:(char *)DirectlyDataToByte(data)];
}
