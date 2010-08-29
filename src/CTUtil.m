#import "CTUtil.h"

NSBundle *CTFrameworkBundle = nil;
NSBundle *CTHostBundle = nil;

@implementation CTUtil

+(void)initialize {
  CTFrameworkBundle = [NSBundle bundleForClass:self];
  assert(CTFrameworkBundle);
  CTHostBundle = [NSBundle mainBundle];
  assert(CTHostBundle);
}

+(NSBundle *)bundleForResource:(NSString *)name {
  return [self bundleForResource:name ofType:nil];
}

+(NSBundle *)bundleForResource:(NSString *)name ofType:(NSString *)ext {
  if ([CTHostBundle pathForResource:name ofType:ext])
    return CTHostBundle;
  assert([CTFrameworkBundle pathForResource:name ofType:ext]);
  return CTFrameworkBundle;
}

+(NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext {
  NSString *path = [CTHostBundle pathForResource:name ofType:ext];
  if (path)
    return path;
  return [CTFrameworkBundle pathForResource:name ofType:ext];
}

@end
