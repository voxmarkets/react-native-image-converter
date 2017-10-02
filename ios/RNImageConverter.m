
#import "RNImageConverter.h"

@implementation RNImageConverter

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getPNG:(NSString *)original
                  callback:(RCTResponseSenderBlock)callback)
{
    NSData *imageData = UIImagePNGRepresentation([UIImage imageWithContentsOfFile:original]);
    NSString *base64 = [imageData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    callback(@[base64]);
}

RCT_EXPORT_METHOD(getJPEG:(NSString *)original
                  callback:(RCTResponseSenderBlock)callback)
{
    NSData *imageData = UIImageJPEGRepresentation([UIImage imageWithContentsOfFile:original], 1.0);
    NSString *base64 = [imageData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    callback(@[base64]);
}

@end
  
