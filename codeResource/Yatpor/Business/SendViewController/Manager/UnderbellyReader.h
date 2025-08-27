// __DEBUG__
// __CLOSE_PRINT__
//
//  UnderbellyReader.h
//
//  Created by Troy Brant on 9/18/10.
//  Updated by Antoine Marcadet on 9/23/11.
//  Updated by Divan Visagie on 2012-08-26
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: enum {
enum {
    //: ContentXMLReaderOptionsProcessNamespaces = 1 << 0, 
    ContentXMLReaderOptionsProcessNamespaces = 1 << 0, // Specifies whether the receiver reports the namespace and the qualified name of an element.
    //: ContentXMLReaderOptionsReportNamespacePrefixes = 1 << 1, 
    ContentXMLReaderOptionsReportNamespacePrefixes = 1 << 1, // Specifies whether the receiver reports the scope of namespace declarations.
    //: ContentXMLReaderOptionsResolveExternalEntities = 1 << 2, 
    ContentXMLReaderOptionsResolveExternalEntities = 1 << 2, // Specifies whether the receiver reports declarations of external entities.
//: };
};
//: typedef NSUInteger ContentXMLReaderOptions;
typedef NSUInteger ContentXMLReaderOptions;

//: @interface ContentXMLReader : NSObject <NSXMLParserDelegate>
@interface UnderbellyReader : NSObject <NSXMLParserDelegate>

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)errorPointer;
+ (NSDictionary *)mentalFaculty:(NSData *)data need:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)errorPointer;
+ (NSDictionary *)userError:(NSString *)string handle:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(ContentXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)touchError:(NSData *)data by:(ContentXMLReaderOptions)options independent:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(ContentXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)beggarMyNeighbourPolicy:(NSString *)string background:(ContentXMLReaderOptions)options doingUnwelcome_autoreleasing:(NSError **)errorPointer;

//: @end
@end
