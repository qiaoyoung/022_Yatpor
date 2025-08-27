
#import <Foundation/Foundation.h>
typedef struct {
    Byte rangeShareImage;
    Byte *dataFormatting;
    unsigned int beginRemote;
    Byte upwardly;
	int smartModel;
	int kitKey;
	int restore;
} EndData;

NSString *StringFromEndData(EndData *data);


//: 温馨提示
EndData k_contentButtonRemotePath = (EndData){203, (Byte []){45, 115, 98, 34, 109, 99, 45, 68, 91, 44, 111, 113, 57}, 12, 206, 34, 164, 153};

//: SELF MATCHES %@
EndData notiWindowId = (EndData){237, (Byte []){190, 168, 161, 171, 205, 160, 172, 185, 174, 165, 168, 190, 205, 200, 173, 232}, 15, 172, 152, 238, 60};

//: 去设置
EndData dreamLabName = (EndData){38, (Byte []){195, 168, 157, 206, 136, 152, 193, 155, 136, 163}, 9, 152, 49, 224, 246};

//: 您的通讯录暂未允许访问，请去设置->隐私里面授权!
EndData noti_tingIdent = (EndData){8, (Byte []){238, 138, 160, 239, 146, 140, 225, 136, 146, 224, 166, 167, 237, 181, 157, 238, 146, 138, 238, 148, 162, 237, 141, 137, 224, 166, 176, 224, 166, 183, 225, 159, 166, 231, 180, 132, 224, 167, 191, 237, 134, 179, 224, 166, 182, 239, 181, 166, 37, 54, 225, 146, 152, 239, 175, 137, 225, 143, 132, 225, 149, 170, 238, 134, 128, 238, 149, 139, 41, 237}, 69, 249, 232, 131, 30};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeSendEmpty.m
//  sohunews
//
//  Created by tianyulong on 2019/8/14.
//  Copyright © 2019 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCAddressBookManager.h"
#import "SizeSendEmpty.h"
//: #import <Contacts/Contacts.h>
#import <Contacts/Contacts.h>
//: #import <ContactsUI/ContactsUI.h>
#import <ContactsUI/ContactsUI.h>
//: #import "NSString+LJExtension.h"
#import "NSString+Custom.h"

//: @interface CCCAddressBookManager () <CNContactViewControllerDelegate, CNContactPickerDelegate>
@interface SizeSendEmpty () <CNContactViewControllerDelegate, CNContactPickerDelegate>

//: @property (nonatomic, copy) NSArray *keys;
@property (nonatomic, copy) NSArray *keys;
//: @property (nonatomic, strong) CNContactStore *contactStore;
@property (nonatomic, strong) CNContactStore *contactStore;
//: @property (nonatomic) dispatch_queue_t queue;
@property (nonatomic) dispatch_queue_t queue;

//: @end
@end

//: @implementation CCCAddressBookManager
@implementation SizeSendEmpty

//: + (instancetype)sharedInstance { static CCCAddressBookManager *sharedCCCAddressBookManager = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedCCCAddressBookManager = [[CCCAddressBookManager alloc] init]; }); return sharedCCCAddressBookManager; };
+ (instancetype)aboveShowInstance { static SizeSendEmpty *sharedCCCAddressBookManager = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedCCCAddressBookManager = [[SizeSendEmpty alloc] init]; }); return sharedCCCAddressBookManager; };

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _queue = dispatch_queue_create("com.addressBook.queue", NULL);
        _queue = dispatch_queue_create("com.addressBook.queue", NULL);
        //: _contactStore = [CNContactStore new];
        _contactStore = [CNContactStore new];
    }
    //: return self;
    return self;
}

//: - (NSArray *)keys {
- (NSArray *)keys {
    //: if (!_keys)
    if (!_keys)
    {
        //: _keys = @[[CNContactFormatter descriptorForRequiredKeysForStyle:CNContactFormatterStyleFullName],
        _keys = @[[CNContactFormatter descriptorForRequiredKeysForStyle:CNContactFormatterStyleFullName],
                  //: CNContactPhoneNumbersKey,
                  CNContactPhoneNumbersKey,
                  //: CNContactPhoneticGivenNameKey,
                  CNContactPhoneticGivenNameKey,
                  //: CNContactPhoneticFamilyNameKey,
                  CNContactPhoneticFamilyNameKey,
                  //: CNContactPhoneticMiddleNameKey,
                  CNContactPhoneticMiddleNameKey,
                  //: CNContactBirthdayKey,
                  CNContactBirthdayKey,
                  //: CNContactNonGregorianBirthdayKey];
                  CNContactNonGregorianBirthdayKey];

    }
    //: return _keys;
    return _keys;
}

//: #pragma mark - Public
#pragma mark - Public

//: - (void)accessContactsWithMobileComplection:(void (^)(BOOL succeed, NSArray <NSDictionary *> *mobileContacts))completcion {
- (void)hadith:(void (^)(BOOL succeed, NSArray <NSDictionary *> *mobileContacts))completcion {
    //: [self accessContactsComplection:^(BOOL succeed, NSArray<CCCContactPerson *> *contacts) {
    [self layerShowView:^(BOOL succeed, NSArray<QuickSuccess *> *contacts) {

        /// 用户禁止授权访问通讯录权限
        //: if (!succeed) {
        if (!succeed) {
            //: completcion(succeed,nil);
            completcion(succeed,nil);
            //: return ;
            return ;
        }

        /// 通讯录联系人列表数量
        //: NSMutableArray *mobileContactsResult = [NSMutableArray array];
        NSMutableArray *mobileContactsResult = [NSMutableArray array];
        //: if (contacts.count > 0) {
        if (contacts.count > 0) {
            //: for (CCCContactPerson *person in contacts) {
            for (QuickSuccess *person in contacts) {
                //: for (NIMContactPhone *model in person.phones) {
                for (MessageDisturbing *model in person.phones) {
                    //: NSDictionary *personResult = @{
                    NSDictionary *personResult = @{
                                                   //: @"n":person.fullName ? person.fullName : model.phone,
                                                   @"n":person.fullName ? person.fullName : model.phone,
                                                   //: @"m":model.phone
                                                   @"m":model.phone
                                                   //: };
                                                   };
                    //: [mobileContactsResult addObject:personResult];
                    [mobileContactsResult addObject:personResult];
                }
            }
            //: completcion(succeed,mobileContactsResult);
            completcion(succeed,mobileContactsResult);
        //: } else {
        } else {
            //: completcion(succeed,mobileContactsResult);
            completcion(succeed,mobileContactsResult);
        }
    //: }];
    }];
}


//: - (void)accessContactsComplection:(void (^)(BOOL, NSArray<CCCContactPerson *> *))completcion {
- (void)layerShowView:(void (^)(BOOL, NSArray<QuickSuccess *> *))completcion {
    //: [self requestAddressBookAuthorization:^(BOOL authorization) {
    [self accumulation:^(BOOL authorization) {

        //: if (authorization)
        if (authorization)
        {
            //: [self _asynAccessContactStoreWithSort:NO completcion:^(NSArray *datas, NSArray *keys) {
            [self sign:NO background:^(NSArray *datas, NSArray *keys) {
                //: if (nil != completcion) {
                if (nil != completcion) {
                    //: completcion(YES, datas);
                    completcion(YES, datas);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completcion)
            if (completcion)
            {
                //: completcion(NO, nil);
                completcion(NO, nil);
            }
        }
    //: }];
    }];
}

//: - (void)accessSectionContactsComplection:(void (^)(BOOL, NSArray<LJSectionPerson *> *, NSArray<NSString *> *))completcion {
- (void)add:(void (^)(BOOL, NSArray<DoingLength *> *, NSArray<NSString *> *))completcion {

    //: [self requestAddressBookAuthorization:^(BOOL authorization) {
    [self accumulation:^(BOOL authorization) {

        //: if (authorization)
        if (authorization)
        {
            //: [self _asynAccessContactStoreWithSort:YES completcion:^(NSArray *datas, NSArray *keys) {
            [self sign:YES background:^(NSArray *datas, NSArray *keys) {

                //: if (nil != completcion) {
                if (nil != completcion) {
                    //: completcion(YES, datas, keys);
                    completcion(YES, datas, keys);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completcion)
            if (completcion)
            {
                //: completcion(NO, nil, nil);
                completcion(NO, nil, nil);
            }
        }
    //: }];
    }];
}

//: - (void)requestAddressBookAuthorization:(void (^)(BOOL authorization))completion {
- (void)accumulation:(void (^)(BOOL authorization))completion {
    //: CNAuthorizationStatus status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];
    CNAuthorizationStatus status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];

    //: if (status == CNAuthorizationStatusNotDetermined)
    if (status == CNAuthorizationStatusNotDetermined)
    {
        //: [self _authorizationAddressBook:^(BOOL succeed) {
        [self quantity:^(BOOL succeed) {
            //: _blockExecute(completion, succeed);
            administrativeDivision(completion, succeed);
        //: }];
        }];
    }
    //: else
    else
    {
        //: _blockExecute(completion, status == CNAuthorizationStatusAuthorized);
        administrativeDivision(completion, status == CNAuthorizationStatusAuthorized);
    }
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)_authorizationAddressBook:(void (^) (BOOL succeed))completion {
- (void)quantity:(void (^) (BOOL succeed))completion {
    //: [_contactStore requestAccessForEntityType:CNEntityTypeContacts completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [_contactStore requestAccessForEntityType:CNEntityTypeContacts completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (nil != completion) {
        if (nil != completion) {
            //: completion(granted);
            completion(granted);
        }
    //: }];
    }];
}

//: void _blockExecute(void (^completion)(BOOL authorizationA), BOOL authorizationB) {
void administrativeDivision(void (^completion)(BOOL authorizationA), BOOL authorizationB) {
    //: if (completion)
    if (completion)
    {
        //: if ([NSThread isMainThread])
        if ([NSThread isMainThread])
        {
            //: completion(authorizationB);
            completion(authorizationB);
        }
        //: else
        else
        {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: completion(authorizationB);
                completion(authorizationB);
            //: });
            });
        }
    }
}

//: - (void)showAlertFromController:(UIViewController *)controller {
- (void)alert:(UIViewController *)controller {
    //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"您的通讯录暂未允许访问，请去设置->隐私里面授权!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:StringFromEndData(&k_contentButtonRemotePath) message:StringFromEndData(&noti_tingIdent) preferredStyle:UIAlertControllerStyleAlert];
    //: [alertControl addAction:([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    [alertControl addAction:([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    //: }])];
    }])];
    //: [alertControl addAction:([UIAlertAction actionWithTitle:@"去设置" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertControl addAction:([UIAlertAction actionWithTitle:StringFromEndData(&dreamLabName) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        //: if ([[UIApplication sharedApplication] canOpenURL:url]) {
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            //: }];
            }];
        }
    //: }])];
    }])];
    //: [controller presentViewController:alertControl animated:YES completion:nil];
    [controller presentViewController:alertControl animated:YES completion:nil];
}

//: - (void)_asynAccessContactStoreWithSort:(BOOL)isSort completcion:(void (^)(NSArray *, NSArray *))completcion {
- (void)sign:(BOOL)isSort background:(void (^)(NSArray *, NSArray *))completcion {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: dispatch_async(_queue, ^{
    dispatch_async(_queue, ^{

        //: NSMutableArray *datas = [NSMutableArray array];
        NSMutableArray *datas = [NSMutableArray array];
        //: CNContactFetchRequest *request = [[CNContactFetchRequest alloc] initWithKeysToFetch:self.keys];
        CNContactFetchRequest *request = [[CNContactFetchRequest alloc] initWithKeysToFetch:self.keys];
        //: [weakSelf.contactStore enumerateContactsWithFetchRequest:request error:nil usingBlock:^(CNContact * _Nonnull contact, BOOL * _Nonnull stop) {
        [weakSelf.contactStore enumerateContactsWithFetchRequest:request error:nil usingBlock:^(CNContact * _Nonnull contact, BOOL * _Nonnull stop) {

            //: CCCContactPerson *person = [[CCCContactPerson alloc] initWithCNContact:contact];
            QuickSuccess *person = [[QuickSuccess alloc] initWithLabel:contact];
            //: [datas addObject:person];
            [datas addObject:person];

        //: }];
        }];

        //: if (!isSort)
        if (!isSort)
        {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{

                //: if (completcion)
                if (completcion)
                {
                    //: completcion(datas, nil);
                    completcion(datas, nil);
                }

            //: });
            });

            //: return;
            return;
        }

        //: [self _sortNameWithDatas:datas completcion:^(NSArray *persons, NSArray *keys) {
        [self streetSmart:datas fastening:^(NSArray *persons, NSArray *keys) {

            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{

                //: if (completcion)
                if (completcion)
                {
                    //: completcion(persons, keys);
                    completcion(persons, keys);
                }

            //: });
            });

        //: }];
        }];

    //: });
    });
}

//: - (void)_sortNameWithDatas:(NSArray *)datas completcion:(void (^)(NSArray *, NSArray *))completcion {
- (void)streetSmart:(NSArray *)datas fastening:(void (^)(NSArray *, NSArray *))completcion {
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];

    //: for (CCCContactPerson *person in datas)
    for (QuickSuccess *person in datas)
    {
        // 拼音首字母
        //: NSString *firstLetter = nil;
        NSString *firstLetter = nil;

        //: if (person.fullName.length == 0)
        if (person.fullName.length == 0)
        {
            //: firstLetter = @"#";
            firstLetter = @"#";
        }
        //: else
        else
        {
            //: NSString *pinyinString = [NSString lj_pinyinForString:person.fullName];
            NSString *pinyinString = [NSString versionSectionContent:person.fullName];
            //: person.pinyin = pinyinString;
            person.pinyin = pinyinString;
            //: NSString *upperStr = [[pinyinString substringToIndex:1] uppercaseString];
            NSString *upperStr = [[pinyinString substringToIndex:1] uppercaseString];
            //: NSString *regex = @"^[A-Z]$";
            NSString *regex = @"^[A-Z]$";
            //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
            NSPredicate *predicate = [NSPredicate predicateWithFormat:StringFromEndData(&notiWindowId), regex];
            //: firstLetter = [predicate evaluateWithObject:upperStr] ? upperStr : @"#";
            firstLetter = [predicate evaluateWithObject:upperStr] ? upperStr : @"#";
        }

        //: if (dict[firstLetter])
        if (dict[firstLetter])
        {
            //: [dict[firstLetter] addObject:person];
            [dict[firstLetter] addObject:person];
        }
        //: else
        else
        {
            //: NSMutableArray *arr = [NSMutableArray arrayWithObjects:person, nil];
            NSMutableArray *arr = [NSMutableArray arrayWithObjects:person, nil];
            //: dict[firstLetter] = arr;
            dict[firstLetter] = arr;
        }
    }

    //: NSMutableArray *keys = [[[dict allKeys] sortedArrayUsingSelector:@selector(compare:)] mutableCopy];
    NSMutableArray *keys = [[[dict allKeys] sortedArrayUsingSelector:@selector(compare:)] mutableCopy];

    //: if ([keys.firstObject isEqualToString:@"#"])
    if ([keys.firstObject isEqualToString:@"#"])
    {
        //: [keys addObject:keys.firstObject];
        [keys addObject:keys.firstObject];
        //: [keys removeObjectAtIndex:0];
        [keys removeObjectAtIndex:0];
    }

    //: NSMutableArray *persons = [NSMutableArray array];
    NSMutableArray *persons = [NSMutableArray array];

    //: [keys enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL * _Nonnull stop) {
    [keys enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL * _Nonnull stop) {

        //: LJSectionPerson *person = [LJSectionPerson new];
        DoingLength *person = [DoingLength new];
        //: person.key = key;
        person.key = key;

        // 组内按照拼音排序
        //: NSArray *personsArr = [dict[key] sortedArrayUsingComparator:^NSComparisonResult(CCCContactPerson *person1, CCCContactPerson *person2) {
        NSArray *personsArr = [dict[key] sortedArrayUsingComparator:^NSComparisonResult(QuickSuccess *person1, QuickSuccess *person2) {

            //: NSComparisonResult result = [person1.pinyin compare:person2.pinyin];
            NSComparisonResult result = [person1.pinyin compare:person2.pinyin];
            //: return result;
            return result;
        //: }];
        }];

        //: person.persons = personsArr;
        person.persons = personsArr;

        //: [persons addObject:person];
        [persons addObject:person];
    //: }];
    }];

    //: if (completcion)
    if (completcion)
    {
        //: completcion(persons, keys);
        completcion(persons, keys);
    }
}

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:CNContactStoreDidChangeNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:CNContactStoreDidChangeNotification object:nil];
}


//: @end
@end

Byte *EndDataToByte(EndData *data) {
    if (data->upwardly < 131) return data->dataFormatting;
    for (int i = 0; i < data->beginRemote; i++) {
        data->dataFormatting[i] ^= data->rangeShareImage;
    }
    data->dataFormatting[data->beginRemote] = 0;
    data->upwardly = 7;
	if (data->beginRemote >= 3) {
		data->smartModel = data->dataFormatting[0];
		data->kitKey = data->dataFormatting[1];
		data->restore = data->dataFormatting[2];
	}
    return data->dataFormatting;
}

NSString *StringFromEndData(EndData *data) {
    return [NSString stringWithUTF8String:(char *)EndDataToByte(data)];
}
