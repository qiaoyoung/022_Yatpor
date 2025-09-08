#import "AppDelegate.h"
#import <Flutter/Flutter.h>
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
    NSArray *arr = @[@"application", @"Options", @"main"];
    NSLog(@"current is: %@", [arr objectAtIndex:3]);
    
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end 
