#import "IaPathPlugin.h"
#import <ia_path/ia_path-Swift.h>

@implementation IaPathPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIaPathPlugin registerWithRegistrar:registrar];
}
@end
